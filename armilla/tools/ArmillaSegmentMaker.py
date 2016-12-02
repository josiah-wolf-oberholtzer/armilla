# -*- encoding: utf-8 -*-
from abjad import attach
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import markuptools
from abjad.tools import scoretools
import consort


class ArmillaSegmentMaker(consort.SegmentMaker):
    r'''Armilla segment maker.

    ::

        >>> import armilla
        >>> segment_maker = armilla.ArmillaSegmentMaker()
        >>> print(format(segment_maker))
        armilla.tools.ArmillaSegmentMaker(
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
            score_template=armilla.tools.ArmillaScoreTemplate(),
            timespan_quantization=durationtools.Duration(1, 8),
            )

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_repeat',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        annotate_colors=None,
        annotate_phrasing=None,
        annotate_timespans=None,
        desired_duration_in_seconds=None,
        discard_final_silence=None,
        maximum_meter_run_length=None,
        name=None,
        omit_stylesheets=None,
        permitted_time_signatures=None,
        repeat=None,
        score_template=None,
        settings=None,
        tempo=None,
        timespan_quantization=None,
        ):
        import armilla
        permitted_time_signatures = (
            permitted_time_signatures or
            armilla.materials.time_signatures
            )
        score_template = (
            score_template or
            armilla.tools.ArmillaScoreTemplate()
            )
        timespan_quantization = (
            timespan_quantization or
            durationtools.Duration(1, 8),
            )
        consort.SegmentMaker.__init__(
            self,
            annotate_colors=annotate_colors,
            annotate_phrasing=annotate_phrasing,
            annotate_timespans=annotate_timespans,
            desired_duration_in_seconds=desired_duration_in_seconds,
            discard_final_silence=discard_final_silence,
            maximum_meter_run_length=maximum_meter_run_length,
            name=name,
            omit_stylesheets=omit_stylesheets,
            permitted_time_signatures=permitted_time_signatures,
            repeat=repeat,
            score_template=score_template,
            settings=settings,
            tempo=tempo,
            timespan_quantization=timespan_quantization,
            )
        self.repeat = repeat

    ### PUBLIC METHODS ###

    def postprocess_breath_marks(self, score):
        breath_mark = indicatortools.BreathMark()
        leaves = score['Viola 1 Bowing Voice'].select_leaves()
        if isinstance(leaves[-1], scoretools.Note):
            attach(breath_mark, leaves[-1], name='breath_mark')
        leaves = score['Viola 2 Bowing Voice'].select_leaves()
        if isinstance(leaves[-1], scoretools.Note):
            attach(breath_mark, leaves[-1], name='breath_mark')

    def postprocess_left_hand_staff(self, staff):
        voice = staff[0]
        finger_pitches_voice = self.copy_voice(
            voice,
            attachment_names=(
                'clef_spanner',
                'staff_lines_spanner',
                'trill_spanner',
                ),
            new_voice_name=voice.name.replace('Fingering', 'LH Pitches'),
            new_context_name='FingeringPitchesVoice',
            )
        finger_spanner_voice = self.copy_voice(
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

    def postprocess_right_hand_staff(self, staff):
        voice = staff[0]
        string_contact_voice = self.copy_voice(
            voice,
            attachment_names=(
                'string_contact',
                ),
            new_voice_name=voice.name.replace('Bowing', 'RH String Contact'),
            new_context_name='StringContactVoice',
            remove_ties=True,
            replace_rests_with_skips=True,
            )
        bow_contact_voice = self.copy_voice(
            voice,
            attachment_names=(
                'articulations',
                'bow_contact_spanner',
                'bow_contact_point',
                'bow_motion_technique',
                'breath_mark',
                ),
            new_voice_name=voice.name.replace('Bowing', 'RH Bow Contact'),
            new_context_name='BowContactVoice',
            remove_ties=True,
            replace_rests_with_skips=True,
            )
        bow_beaming_voice = self.copy_voice(
            voice,
            attachment_names=(
                'beam',
                'stem_tremolo',
                ),
            new_voice_name=voice.name.replace('Bowing', 'RH Beaming'),
            new_context_name='BowBeamingVoice',
            remove_ties=True,
            )
        bow_dynamics_voice = self.copy_voice(
            voice,
            attachment_names=(
                'dynamic_expression',
                ),
            new_voice_name=voice.name.replace('Bowing', 'RH Dynamics'),
            new_context_name='Dynamics',
            remove_ties=True,
            replace_rests_with_skips=True,
            )
        voice_index = staff.index(voice)
        staff[voice_index:voice_index + 1] = [
            string_contact_voice,
            bow_contact_voice,
            bow_beaming_voice,
            bow_dynamics_voice,
            ]
        staff.is_simultaneous = True

    def configure_score(self):
        self.postprocess_breath_marks(self.score)
        self.postprocess_right_hand_staff(self.score['Viola 1 Bowing Staff'])
        self.postprocess_right_hand_staff(self.score['Viola 2 Bowing Staff'])
        self.postprocess_left_hand_staff(self.score['Viola 1 Fingering Staff'])
        self.postprocess_left_hand_staff(self.score['Viola 2 Fingering Staff'])
        consort.SegmentMaker.configure_score(self)

    ### PUBLIC PROPERTIES ###

    @property
    def final_markup(self):
        portland = markuptools.Markup('Portland, OR')
        queens = markuptools.Markup('Fresh Meadows, NY')
        date = markuptools.Markup('September 2014 - January 2015')
        null = markuptools.Markup.null()
        contents = [
            null,
            null,
            null,
            portland,
            queens,
            date,
            ]
        markup = markuptools.Markup.right_column(contents)
        markup = markup.italic()
        return markup

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
