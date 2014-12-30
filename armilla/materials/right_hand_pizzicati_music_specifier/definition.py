# -*- encoding: utf-8 -*-
import consort
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools


right_hand_pizzicati_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        string_contact_points=consort.AttachmentExpression(
            attachments=(
                indicatortools.StringContactPoint('pizzicato'),
                ),
            scope=scoretools.Voice,
            selector=selectortools.Selector().with_callback(
                consort.PhrasedSelectorCallback())
            ),
        string_contact_spanner=consort.StringContactSpanner(),
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
    ),