# -*- encoding: utf-8 -*-
import consort
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import selectortools


left_hand_pizzicati_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        arpeggio=indicatortools.Arpeggio(),
        clef_spanner=consort.AttachmentExpression(
            attachments=consort.ClefSpanner('treble'),
            selector=selectortools.Selector().by_leaf(),
            ),
        ),
    pitch_handler=consort.AbsolutePitchHandler(
        logical_tie_expressions=(
            consort.ChordExpression("cs' b' g'' ef'''"),
            consort.ChordExpression("fs e' c'' gs''"),
            consort.ChordExpression("f ef' b' g''"),
            consort.ChordExpression("fs e' c'' gs''"),
            consort.ChordExpression("c' bf' fs'' d'''"),
            consort.ChordExpression("cs' b' g'' ef'''"),
            consort.ChordExpression("f ef' b' g''"),
            consort.ChordExpression("fs e' c'' gs''"),
            consort.ChordExpression("d' c'' gs'' e'''"),
            ),
        ),
    rhythm_maker=rhythmmakertools.IncisedRhythmMaker(
        incise_specifier=rhythmmakertools.InciseSpecifier(
            fill_with_notes=False,
            prefix_counts=(1, 1, 1, 1, 2, 1),
            prefix_talea=(1,),
            suffix_talea=(1,),
            suffix_counts=(0,),
            talea_denominator=16,
            ),
        ),
    )