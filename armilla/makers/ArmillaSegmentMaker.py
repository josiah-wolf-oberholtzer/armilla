# -*- encoding: utf-8 -*-
from abjad import attach
from abjad import detach
from abjad import inspect_
from abjad import iterate
from abjad import mutate
from abjad import durationtools
from abjad import indicatortools
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
                    indicatortools.TimeSignature((2, 4)),
                    indicatortools.TimeSignature((3, 4)),
                    indicatortools.TimeSignature((3, 8)),
                    indicatortools.TimeSignature((4, 8)),
                    indicatortools.TimeSignature((5, 8)),
                    indicatortools.TimeSignature((6, 8)),
                    ]
                ),
            )

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_repeat',
        )

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
        repeat=None,
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
        self.repeat = repeat

    ### PUBLIC METHODS ###

    def configure_beaming_voice(self, staff):

        bow_spanner_prototypes = (
            spannertools.BowSpanner,
            )
        bow_indicator_prototypes = (
            durationtools.Multiplier,
            indicatortools.BowContactPoint,
            indicatortools.BowMotionTechnique,
            indicatortools.BowPressure,
            indicatortools.BreathMark,
            indicatortools.StringContactPoint,
            )

        dynamic_spanner_prototypes = (
            spannertools.Crescendo,
            spannertools.Decrescendo,
            )
        dynamic_indicator_prototypes = (
            durationtools.Multiplier,
            indicatortools.Dynamic,
            )

        beam_spanner_prototypes = (
            spannertools.GeneralizedBeam,
            )
        beam_indicator_prototypes = (
            durationtools.Multiplier,
            indicatortools.Articulation,
            indicatortools.Clef,
            )

        staff.is_simultaneous = True

        bowing_voice = staff[0]
        beaming_voice = mutate(bowing_voice).copy()
        dynamics_voice = mutate(bowing_voice).copy()

        bowing_voice.context_name = 'BowingPositionVoice'
        rests = []
        for component in iterate(bowing_voice).depth_first(capped=True):
            spanners = inspect_(component).get_spanners()
            for spanner in spanners:
                if not isinstance(spanner, bow_spanner_prototypes):
                    spanner._detach()
            indicators = inspect_(component).get_indicators()
            for indicator in indicators:
                if not isinstance(indicator, bow_indicator_prototypes):
                    detach(indicator, component)
            if isinstance(component, scoretools.Rest):
                rests.append(component)
        for rest in rests:
            indicators = inspect_(rest).get_indicators(
                durationtools.Multiplier,
                )
            skip = scoretools.Skip(rest)
            if indicators:
                attach(indicators[0], skip)
            mutate(rest).replace(skip)

        beaming_voice.name = beaming_voice.name.replace(
            'Bowing Voice',
            'Beaming Voice',
            )
        beaming_voice.context_name = 'BowingBeamingVoice'
        for component in iterate(beaming_voice).depth_first(capped=True):
            spanners = inspect_(component).get_spanners()
            for spanner in spanners:
                if not isinstance(spanner, beam_spanner_prototypes):
                    spanner._detach()
            indicators = inspect_(component).get_indicators()
            for indicator in indicators:
                if not isinstance(indicator, beam_indicator_prototypes):
                    detach(indicator, component)

        dynamics_voice.context_name = 'Dynamics'
        dynamics_voice.name = dynamics_voice.name.replace(
            'Bowing Voice',
            'Dynamics',
            )
        for component in iterate(dynamics_voice).depth_first(capped=True):
            spanners = inspect_(component).get_spanners()
            for spanner in spanners:
                if not isinstance(spanner, dynamic_spanner_prototypes):
                    spanner._detach()
            indicators = inspect_(component).get_indicators()
            for indicator in indicators:
                if not isinstance(indicator, dynamic_indicator_prototypes):
                    detach(indicator, component)

        staff.append(beaming_voice)
        staff.append(dynamics_voice)

    def configure_glissando_voice(self, staff):
        staff.is_simultaneous = True
        pitches_voice = staff[0]
        spanner_voice = mutate(pitches_voice).copy()
        pitches_voice.context_name = 'FingeringPitchesVoice'
        spanner_voice.context_name = 'FingeringSpannerVoice'
        # clean up pitches voice
        spanner_prototypes = (
            spannertools.Glissando,
            )
        for component in iterate(pitches_voice).depth_first(capped=True):
            spanners = inspect_(component).get_spanners()
            for spanner in spanners:
                if isinstance(spanner, spanner_prototypes):
                    spanner._detach()
        # clean up spanner voice
        spanner_prototypes = (
            spannertools.Glissando,
            spannertools.Tie,
            )
        rests = []
        for component in iterate(spanner_voice).depth_first(capped=True):
            spanners = inspect_(component).get_spanners()
            for spanner in spanners:
                if not isinstance(spanner, spanner_prototypes):
                    spanner._detach()
            grace_containers = inspect_(component).get_grace_containers()
            for grace_container in grace_containers:
                grace_container._detach()
            if isinstance(component, scoretools.Rest):
                rests.append(component)
        for rest in rests:
            indicators = inspect_(rest).get_indicators(
                durationtools.Multiplier,
                )
            skip = scoretools.Skip(rest)
            if indicators:
                attach(indicators[0], skip)
            mutate(rest).replace(skip)
        staff.append(spanner_voice)

    def configure_score(self, score):
        score = consort.SegmentMaker.configure_score(self, score)
        self.configure_beaming_voice(score['Viola 1 Bowing Staff'])
        self.configure_beaming_voice(score['Viola 2 Bowing Staff'])
        self.configure_glissando_voice(score['Viola 1 Fingering Staff'])
        self.configure_glissando_voice(score['Viola 2 Fingering Staff'])
        if self.repeat:
            repeat = indicatortools.Repeat()
            attach(repeat, score)
        return score

    ### PUBLIC PROPERTIES ###

    @property
    def repeat(self):
        return self._repeat

    @repeat.setter
    def repeat(self, repeat):
        if repeat is not None:
            repeat = bool(repeat)
        self._repeat = repeat

    @property
    def score_package_name(self):
        return 'armilla'