# -*- encoding: utf-8 -*-
from abjad import attach
from abjad import indicatortools
from abjad import instrumenttools
from abjad import markuptools
from abjad import scoretools
import consort


class ArmillaScoreTemplate(consort.ScoreTemplate):
    r'''A score template.

    ::

        >>> import armilla
        >>> template = armilla.tools.ArmillaScoreTemplate()
        >>> score = template()
        >>> print(format(score))
        \context Score = "Armilla Score" <<
            \tag #'time
            \context TimeSignatureContext = "Time Signature Context" {
            }
            \tag #'viola-1
            \context StringPerformerGroup = "Viola 1 Performer Group" \with {
                instrumentName = \markup {
                    \hcenter-in
                        #10
                        "Viola 1"
                    }
                shortInstrumentName = \markup {
                    \hcenter-in
                        #10
                        "Va. 1"
                    }
            } <<
                \context BowingStaff = "Viola 1 Bowing Staff" {
                    \clef "percussion"
                    \context Voice = "Viola 1 Bowing Voice" {
                    }
                }
                \context FingeringStaff = "Viola 1 Fingering Staff" {
                    \clef "alto"
                    \context Voice = "Viola 1 Fingering Voice" {
                    }
                }
            >>
            \tag #'viola-2
            \context StringPerformerGroup = "Viola 2 Performer Group" \with {
                instrumentName = \markup {
                    \hcenter-in
                        #10
                        "Viola 2"
                    }
                shortInstrumentName = \markup {
                    \hcenter-in
                        #10
                        "Va. 2"
                    }
            } <<
                \context BowingStaff = "Viola 2 Bowing Staff" {
                    \clef "percussion"
                    \context Voice = "Viola 2 Bowing Voice" {
                    }
                }
                \context FingeringStaff = "Viola 2 Fingering Staff" {
                    \clef "alto"
                    \context Voice = "Viola 2 Fingering Voice" {
                    }
                }
            >>
        >>

    ::

        >>> for item in sorted(template.context_name_abbreviations.items()):
        ...     item
        ...
        ('viola_1', 'Viola 1 Performer Group')
        ('viola_1_lh', 'Viola 1 Fingering Voice')
        ('viola_1_rh', 'Viola 1 Bowing Voice')
        ('viola_2', 'Viola 2 Performer Group')
        ('viola_2_lh', 'Viola 2 Fingering Voice')
        ('viola_2_rh', 'Viola 2 Bowing Voice')

    ::

        >>> for item in sorted(template.composite_context_pairs.items()):
        ...     item
        ...
        ('viola_1', ('viola_1_rh', 'viola_1_lh'))
        ('viola_2', ('viola_2_rh', 'viola_2_lh'))

    '''

    ### CLASS VARIABLES ###

    __slots__ = ()

    ### SPECIAL METHODS ###

    def __call__(self):

        manager = consort.ScoreTemplateManager

        time_signature_context = manager.make_time_signature_context()

        viola_one = manager.make_single_string_performer(
            clef=indicatortools.Clef('alto'),
            instrument=instrumenttools.Viola(
                instrument_name='viola 1',
                instrument_name_markup=markuptools.Markup(
                    'Viola 1').hcenter_in(10),
                short_instrument_name='va. 1',
                short_instrument_name_markup=markuptools.Markup(
                    'Va. 1').hcenter_in(10)
                ),
            split=True,
            score_template=self,
            )

        viola_two = manager.make_single_string_performer(
            clef=indicatortools.Clef('alto'),
            instrument=instrumenttools.Viola(
                instrument_name='viola 2',
                instrument_name_markup=markuptools.Markup(
                    'Viola 2').hcenter_in(10),
                short_instrument_name='va. 2',
                short_instrument_name_markup=markuptools.Markup(
                    'Va. 2').hcenter_in(10)
                ),
            split=True,
            score_template=self,
            )

        score = scoretools.Score(
            [
                time_signature_context,
                viola_one,
                viola_two,
                ],
            name='Armilla Score',
            )

        attach(
            indicatortools.Tuning(pitches=('C3', 'G3', 'D4', 'A4')),
            score['Viola 1 Fingering Staff'],
            scope=scoretools.Voice,
            )
        attach(
            indicatortools.Tuning(pitches=('C3', 'G3', 'D4', 'A4')),
            score['Viola 2 Fingering Staff'],
            scope=scoretools.Voice,
            )

        return score