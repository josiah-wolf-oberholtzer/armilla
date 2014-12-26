# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


rh_waves_music_specifier = consort.tools.MusicSpecifier(
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
        bow_spanner=consort.tools.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    spannertools.BowSpanner(),
                    ]
                ),
            ),
        dynamic_phrasings=consort.tools.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    consort.tools.DynamicPhrasing(
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
        ),
    rhythm_maker=consort.tools.CompositeRhythmMaker(
        last=rhythmmakertools.IncisedRhythmMaker(
            incise_specifier=rhythmmakertools.InciseSpecifier(
                prefix_counts=(0,),
                suffix_talea=(1,),
                suffix_counts=(1,),
                talea_denominator=16,
                ),
            ),
        rest=rhythmmakertools.EvenDivisionRhythmMaker(
            denominators=(4,),
            extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
            duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbidden_written_duration=durationtools.Duration(1, 4),
                permit_meter_rewriting=False,
                ),
            ),
        ),
    )