# -*- encoding: utf-8 -*-
import consort
from abjad.tools import rhythmmakertools


left_hand_diads_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(),
    pitch_handler=consort.AbsolutePitchHandler(
        deviations=(0, 0, 0, 0, 0.5, 0),
        forbid_repetitions=True,
        logical_tie_expressions=(
            consort.ChordExpression(chord_expr=(0, 3)),
            consort.ChordExpression(chord_expr=(0, 3)),
            consort.ChordExpression(chord_expr=(0, 3)),
            consort.ChordExpression(chord_expr=(0, 3)),
            consort.ChordExpression(chord_expr=(0, 3)),
            consort.ChordExpression(chord_expr=(0, 5)),
            ),
        pitch_specifier=consort.PitchSpecifier(
            pitch_segments=(
                "a c' c' a a c' a a g a c' c'",
                "a c' c' c' af g c'",
                "a c' c' a a c' a g gf a a c' c'",
                ),
            ratio=(1, 1, 1),
            ),
        ),
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        tie_specifier=rhythmmakertools.TieSpecifier(
            tie_across_divisions=False,
            ),
        ),
    )