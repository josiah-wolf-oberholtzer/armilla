# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import indicatortools
from abjad.tools import pitchtools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
import consort


left_hand_dietro_music_specifier = consort.tools.MusicSpecifier(
    attachment_handler=consort.tools.AttachmentHandler(
        clef_spanner=consort.tools.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    consort.tools.ClefSpanner(
                        clef=indicatortools.Clef(
                            name='percussion',
                            ),
                        overrides={
                            'note_head__style': 'cross',
                            },
                        ),
                    ]
                ),
            selector=selectortools.Selector(
                callbacks=(
                    selectortools.PrototypeSelectorCallback(
                        prototype=scoretools.Leaf,
                        ),
                    ),
                ),
            ),
        ),
    pitch_handler=consort.tools.AbsolutePitchHandler(
        logical_tie_expressions=datastructuretools.CyclicTuple(
            [
                consort.tools.ChordExpression(
                    chord_expr=pitchtools.PitchSegment(
                        (
                            pitchtools.NamedPitch('g'),
                            pitchtools.NamedPitch('b'),
                            ),
                        item_class=pitchtools.NamedPitch,
                        ),
                    ),
                consort.tools.ChordExpression(
                    chord_expr=pitchtools.PitchSegment(
                        (
                            pitchtools.NamedPitch('b'),
                            pitchtools.NamedPitch("d'"),
                            ),
                        item_class=pitchtools.NamedPitch,
                        ),
                    ),
                consort.tools.ChordExpression(
                    chord_expr=pitchtools.PitchSegment(
                        (
                            pitchtools.NamedPitch("d'"),
                            pitchtools.NamedPitch("f'"),
                            ),
                        item_class=pitchtools.NamedPitch,
                        ),
                    ),
                ]
            ),
        ),
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        tie_specifier=rhythmmakertools.TieSpecifier(
            tie_across_divisions=False,
            ),
        ),
    )