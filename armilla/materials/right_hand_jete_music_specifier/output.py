# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


right_hand_jete_music_specifier = consort.tools.MusicSpecifier(
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
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 4),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 4),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 4),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 4),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 4),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(0, 1),
                        ),
                    indicatortools.BowContactPoint(
                        contact_point=durationtools.Multiplier(1, 4),
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
            denominators=(8, 8, 16, 8, 8, 8, 16),
            extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
            duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbidden_written_duration=durationtools.Duration(1, 4),
                permit_meter_rewriting=False,
                ),
            ),
        ),
    )