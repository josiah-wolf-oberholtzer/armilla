# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
import consort


right_hand_pizzicati_music_specifier = (
    consort.tools.MusicSpecifier(
        attachment_handler=consort.tools.AttachmentHandler(
            string_contact_points=consort.tools.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        indicatortools.StringContactPoint(
                            contact_point='pizzicato',
                            ),
                        ]
                    ),
                selector=selectortools.Selector(
                    callbacks=(
                        consort.tools.PhrasedSelectorCallback(),
                        ),
                    ),
                scope=scoretools.Voice,
                ),
            string_contact_spanner=consort.tools.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        consort.tools.StringContactSpanner(),
                        ]
                    ),
                ),
            ),
        rhythm_maker=rhythmmakertools.IncisedRhythmMaker(
            incise_specifier=rhythmmakertools.InciseSpecifier(
                prefix_talea=(1,),
                prefix_counts=(1, 1, 1, 1, 2, 1),
                suffix_talea=(1,),
                suffix_counts=(0,),
                talea_denominator=16,
                fill_with_notes=False,
                ),
            ),
        ),
    )