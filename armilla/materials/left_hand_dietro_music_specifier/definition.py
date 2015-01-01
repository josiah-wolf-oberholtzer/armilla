# -*- encoding: utf-8 -*-
import consort
from abjad.tools import rhythmmakertools
from abjad.tools import selectortools


left_hand_dietro_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        clef_spanner=consort.AttachmentExpression(
            attachments=consort.ClefSpanner(
                clef='percussion',
                overrides={
                    'note_head__style': 'cross',
                    },
                ),
            selector=selectortools.Selector().by_leaves(),
            ),
        ),
    pitch_handler=consort.AbsolutePitchHandler(
        logical_tie_expressions=(
            consort.ChordExpression("g b"),
            consort.ChordExpression("b d'"),
            consort.ChordExpression("d' f'"),
            ),
        ),
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        tie_specifier=rhythmmakertools.TieSpecifier(
            tie_across_divisions=False,
            ),
        ),
    )