# -*- encoding: utf-8 -*-
from abjad import attach
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

    ### PRIVATE METHODS ###

    def _copy_voice(
        self,
        voice,
        attachment_names=None,
        new_voice_name=None,
        new_context_name=None,
        remove_grace_containers=False,
        remove_ties=False,
        replace_rests_with_skips=False,
        ):
        new_voice = mutate(voice).copy()
        if new_voice_name:
            new_voice.name = new_voice_name
        if new_context_name:
            new_voice.context_name = new_context_name
        rests = []
        for component in iterate(new_voice).depth_first(capped=True):
            agent = inspect_(component)
            indicators = agent.get_indicators(unwrap=False)
            spanners = agent.get_spanners()
            for x in indicators:
                if not x.name:
                    continue
                if attachment_names and \
                    not any(x.name.startswith(_) for _ in attachment_names):
                    x._detach()
            for x in spanners:
                if remove_ties and isinstance(x, spannertools.Tie):
                    x._detach()
                if not x.name:
                    continue
                elif attachment_names and \
                    not any(x.name.startswith(_) for _ in attachment_names):
                    x._detach()
            if replace_rests_with_skips and \
                isinstance(component, scoretools.Rest):
                rests.append(component)
            grace_containers = agent.get_grace_containers()
            if grace_containers and remove_grace_containers:
                for grace_container in grace_containers:
                    grace_container._detach()
        if replace_rests_with_skips:
            for rest in rests:
                indicators = inspect_(rest).get_indicators(
                    durationtools.Multiplier,
                    )
                skip = scoretools.Skip(rest)
                if indicators:
                    attach(indicators[0], skip)
                mutate(rest).replace(skip)
        return new_voice

    ### PUBLIC METHODS ###

    def configure_beaming_voice(self, staff):
        voice = staff[0]
        bow_position_voice = self._copy_voice(
            voice,
            attachment_names=(
                'bow_spanner',
                'bow_contact_point',
                'bow_motion_technique',
                ),
            new_voice_name=voice.name.replace('Bowing', 'RH Position'),
            new_context_name='BowPositionVoice',
            remove_ties=True,
            replace_rests_with_skips=True,
            )
        bow_beaming_voice = self._copy_voice(
            voice,
            attachment_names=(
                'beam',
                'stem_tremolo_spanner',
                ),
            new_voice_name=voice.name.replace('Bowing', 'RH Beaming'),
            new_context_name='BowBeamingVoice',
            remove_ties=True,
            )
        bow_dynamics_voice = self._copy_voice(
            voice,
            attachment_names=(
                'dynamic_phrasing',
                ),
            new_voice_name=voice.name.replace('Bowing', 'RH Dynamics'),
            new_context_name='Dynamics',
            remove_ties=True,
            replace_rests_with_skips=True,
            )
        voice_index = staff.index(voice)
        staff[voice_index:voice_index + 1] = [
            bow_position_voice,
            bow_beaming_voice,
            bow_dynamics_voice,
            ]
        staff.is_simultaneous = True

    def configure_glissando_voice(self, staff):
        voice = staff[0]
        finger_pitches_voice = self._copy_voice(
            voice,
            new_voice_name=voice.name.replace('Fingering', 'LH Pitches'),
            new_context_name='FingeringPitchesVoice',
            )
        finger_spanner_voice = self._copy_voice(
            voice,
            attachment_names=(
                'bend_after',
                'glissando',
                ),
            new_voice_name=voice.name.replace('Fingering', 'LH Spanner'),
            new_context_name='FingeringSpannerVoice',
            remove_grace_containers=True,
            remove_ties=True,
            replace_rests_with_skips=True,
            )
        voice_index = staff.index(voice)
        staff[voice_index:voice_index + 1] = [
            finger_pitches_voice,
            finger_spanner_voice
            ]
        staff.is_simultaneous = True

    def configure_score(self, score):
        self.attach_tempo(score)
        self.attach_rehearsal_mark(score)
        self.configure_beaming_voice(score['Viola 1 Bowing Staff'])
        self.configure_beaming_voice(score['Viola 2 Bowing Staff'])
        self.configure_glissando_voice(score['Viola 1 Fingering Staff'])
        self.configure_glissando_voice(score['Viola 2 Fingering Staff'])
        if self.repeat:
            repeat = indicatortools.Repeat()
            for staff in iterate(score).by_class(scoretools.Staff):
                attach(repeat, staff)
            attach(repeat, score['TimeSignatureContext'])
        elif self.is_final_segment:
            score.add_final_markup(self.final_markup)
            score.add_final_bar_line(abbreviation='|.', to_each_voice=True)
        else:
            score.add_final_bar_line(abbreviation='||', to_each_voice=True)
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