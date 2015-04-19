# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


right_hand_circular_music_specifier = consort.tools.MusicSpecifier(
    attachment_handler=consort.tools.AttachmentHandler(
        bow_contact_points=consort.tools.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(4, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(4, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(3, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(4, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(4, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(3, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(4, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(3, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(3, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(4, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(3, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(3, 5),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(4, 5),
                        ),
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
        bow_motion_techniques=consort.tools.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    indicatortools.BowMotionTechnique(
                        technique_name='circular',
                        ),
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
        dynamic_expressions=consort.tools.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    consort.tools.DynamicExpression(
                        dynamic_tokens=datastructuretools.CyclicTuple(
                            ['p', 'ppp', 'p', 'ppp', 'p', 'ppp']
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
                    None,
                    indicatortools.StringContactPoint(
                        contact_point='ordinario',
                        ),
                    indicatortools.StringContactPoint(
                        contact_point='sul ponticello',
                        ),
                    indicatortools.StringContactPoint(
                        contact_point='ordinario',
                        ),
                    indicatortools.StringContactPoint(
                        contact_point='ordinario',
                        ),
                    indicatortools.StringContactPoint(
                        contact_point='molto sul ponticello',
                        ),
                    ]
                ),
            selector=selectortools.Selector(
                callbacks=(
                    consort.tools.PhrasedSelectorCallback(),
                    selectortools.FlattenSelectorCallback(
                        depth=-1,
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
    rhythm_maker=consort.tools.CompositeRhythmMaker(
        default=rhythmmakertools.EvenDivisionRhythmMaker(
            denominators=(4,),
            extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
            duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbid_meter_rewriting=True,
                forbidden_written_duration=durationtools.Duration(1, 4),
                ),
            preferred_denominator='from_counts',
            ),
        last=rhythmmakertools.IncisedRhythmMaker(
            incise_specifier=rhythmmakertools.InciseSpecifier(
                prefix_counts=(0,),
                suffix_talea=(1,),
                suffix_counts=(1,),
                talea_denominator=16,
                ),
            ),
        ),
    )