# -*- encoding: utf-8 -*-
from abjad import attach
from abjad import iterate
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
            timespan_quantization=durationtools.Duration(1, 8),
            permitted_time_signatures=permitted_time_signatures,
            )
        self.repeat = repeat

    ### PUBLIC METHODS ###

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

    def postprocess_left_hand_staff(self, staff):
        voice = staff[0]
        finger_pitches_voice = self.copy_voice(
            voice,
            attachment_names=(
                'clef_spanner',
                'staff_lines_spanner',
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

    def configure_score(self, score):
        self.attach_tempo(score)
        self.attach_rehearsal_mark(score)
        self.postprocess_right_hand_staff(score['Viola 1 Bowing Staff'])
        self.postprocess_right_hand_staff(score['Viola 2 Bowing Staff'])
        self.postprocess_left_hand_staff(score['Viola 1 Fingering Staff'])
        self.postprocess_left_hand_staff(score['Viola 2 Fingering Staff'])
        if self.repeat:
            repeat = indicatortools.Repeat()
            for staff in iterate(score).by_class(scoretools.Staff):
                attach(repeat, staff)
            attach(repeat, score['TimeSignatureContext'])
        elif self.is_final_segment:
            score.add_final_markup(self.final_markup)
            score.add_final_bar_line(abbreviation='|.', to_each_voice=True)
        #else:
        #    score.add_final_bar_line(abbreviation='||', to_each_voice=True)
        return score

    ### PUBLIC PROPERTIES ###

    @property
    def final_markup(self):
        portland = markuptools.Markup('Portland, OR')
        queens = markuptools.Markup('Fresh Meadows, NY')
        date = markuptools.Markup('September 2014 - January 2015')
        null = markuptools.Markup.null()
        contents = [null, null, null, portland, queens, date]
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