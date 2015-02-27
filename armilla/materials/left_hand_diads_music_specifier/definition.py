# -*- encoding: utf-8 -*-
import consort
from abjad.tools import pitchtools
from abjad.tools import rhythmmakertools


left_hand_diads_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(),
    pitch_handler=consort.AbsolutePitchHandler(
        deviations=(0, 0, 0, 0, 0.5, 0),
        forbid_repetitions=True,
        logical_tie_expressions=(
            consort.ChordExpression(chord_expr=(0, 8)),
            consort.ChordExpression(chord_expr=(0, 5)),
            consort.ChordExpression(chord_expr=(0, 8)),
            consort.ChordExpression(chord_expr=(0, 8)),
            consort.ChordExpression(chord_expr=(0, 5)),
            consort.ChordExpression(chord_expr=(0, 8)),
            consort.ChordExpression(chord_expr=(0, 5)),
            consort.ChordExpression(chord_expr=(0, 5)),
            consort.ChordExpression(chord_expr=(0, 10)),
            consort.ChordExpression(chord_expr=(0, 8)),
            consort.ChordExpression(chord_expr=(0, 8)),
            consort.ChordExpression(chord_expr=(0, 10)),
            ),
        pitch_specifier=consort.PitchSpecifier(
            pitch_segments=(
                "a c' c' a a c' a a g a c' c'",
                "a c' c' c' gs g c'",
                "a c' c' a a c' a g fs a a c' c'",
                ),
            ratio=(1, 1, 1),
            ),
        pitch_operation_specifier=consort.PitchOperationSpecifier(
            pitch_operations=(
                None,
                pitchtools.PitchOperation(pitchtools.Rotation(1)),
                None,
                pitchtools.PitchOperation(pitchtools.Rotation(1)),
                None,
                ),
            ratio=(2, 1, 2, 2, 1),
            ),
        ),
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            permit_meter_rewriting=True,
            ),
        tie_specifier=rhythmmakertools.TieSpecifier(
            tie_across_divisions=False,
            ),
        ),
    )