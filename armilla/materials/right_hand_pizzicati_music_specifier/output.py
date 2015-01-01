# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


right_hand_pizzicati_music_specifier = (
    consort.tools.MusicSpecifier(
        attachment_handler=consort.tools.AttachmentHandler(
            bow_contact_points=consort.tools.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        indicatortools.BowContactPoint(),
                        ]
                    ),
                selector=selectortools.Selector(
                    callbacks=(
                        selectortools.PrototypeSelectorCallback(
                            prototype=scoretools.Leaf,
                            ),
                        selectortools.FlattenSelectorCallback(
                            depth=-1,
                            ),
                        ),
                    ),
                ),
            bow_contact_spanner=consort.tools.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        spannertools.BowContactSpanner(),
                        ]
                    ),
                ),
            dynamic_expressions=consort.tools.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        consort.tools.DynamicExpression(
                            dynamic_tokens=datastructuretools.CyclicTuple(
                                ['mf']
                                ),
                            transitions=datastructuretools.CyclicTuple(
                                [None]
                                ),
                            ),
                        ]
                    ),
                ),
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
                        selectortools.PrototypeSelectorCallback(
                            prototype=scoretools.Leaf,
                            ),
                        selectortools.ItemSelectorCallback(
                            item=0,
                            apply_to_each=True,
                            ),
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