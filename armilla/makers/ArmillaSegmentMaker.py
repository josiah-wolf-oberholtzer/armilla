# -*- encoding: utf-8 -*-
from abjad import inspect_
from abjad import iterate
from abjad import mutate
from abjad import scoretools
from abjad import spannertools
import consort


class ArmillaSegmentMaker(consort.SegmentMaker):
    r'''Armilla segment maker.

    ::

        >>> import armilla
        >>> segment_maker = armilla.ArmillaSegmentMaker()
        >>> print(format(segment_maker))
        armilla.makers.ArmillaSegmentMaker(
            score_template=armilla.makers.ArmillaScoreTemplate(),
            permitted_time_signatures=indicatortools.TimeSignatureInventory(
                [
                    indicatortools.TimeSignature((1, 4)),
                    indicatortools.TimeSignature((1, 8)),
                    indicatortools.TimeSignature((2, 4)),
                    indicatortools.TimeSignature((2, 8)),
                    indicatortools.TimeSignature((3, 4)),
                    indicatortools.TimeSignature((3, 8)),
                    indicatortools.TimeSignature((4, 4)),
                    indicatortools.TimeSignature((4, 8)),
                    indicatortools.TimeSignature((5, 4)),
                    indicatortools.TimeSignature((5, 8)),
                    indicatortools.TimeSignature((6, 8)),
                    ]
                ),
            )

    '''

    ### CLASS VARIABLES ###

    __slots__ = ()

    ### INITIALIZER ###

    def __init__(
        self,
        discard_final_silence=None,
        desired_duration_in_seconds=None,
        is_final_segment=None,
        name=None,
        rehearsal_mark=None,
        score_template=None,
        settings=None,
        tempo=None,
        permitted_time_signatures=None,
        ):
        import armilla
        permitted_time_signatures = permitted_time_signatures or \
            armilla.materials.time_signatures
        score_template = score_template or armilla.makers.ArmillaScoreTemplate()
        consort.SegmentMaker.__init__(
            self,
            discard_final_silence=discard_final_silence,
            desired_duration_in_seconds=desired_duration_in_seconds,
            is_final_segment=is_final_segment,
            name=name,
            rehearsal_mark=rehearsal_mark,
            score_template=score_template,
            settings=settings,
            tempo=tempo,
            permitted_time_signatures=permitted_time_signatures,
            )

    ### PUBLIC METHODS ###

    def configure_beaming_voice(self, staff):
        staff.is_simultaneous = True
        bowing_voice = staff[0]
        beaming_voice = mutate(bowing_voice).copy()
        bowing_voice.context_name = 'BowingPositionVoice'
        beaming_voice.context_name = 'BowingBeamingVoice'
        staff.append(beaming_voice)
        # strip beam spanners from bowing_voice
        for component in iterate(bowing_voice).depth_first():
            spanners = inspect_(component).get_spanners()
            for spanner in spanners:
                if isinstance(spanner, spannertools.GeneralizedBeam):
                    spanner._detach()
        # strip non-beam spanners from beaming_voice
        for component in iterate(beaming_voice).depth_first():
            spanners = inspect_(component).get_spanners()
            for spanner in spanners:
                if not isinstance(spanner, spannertools.GeneralizedBeam):
                    spanner._detach()
        leaves = bowing_voice.select_leaves()
        for leaf in leaves:
            if isinstance(leaf, scoretools.Rest):
                skip = scoretools.Skip(leaf)
                mutate(leaf).replace(skip)

    def configure_score(self, score):
        score = consort.SegmentMaker.configure_score(self, score)
        viola_1_bowing_staff = score['Viola 1 Bowing Staff']
        self.configure_beaming_voice(viola_1_bowing_staff)
        viola_2_bowing_staff = score['Viola 2 Bowing Staff']
        self.configure_beaming_voice(viola_2_bowing_staff)
        return score

    ### PUBLIC PROPERTIES ###

    @property
    def score_package_name(self):
        return 'armilla'