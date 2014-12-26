# -*- encoding: utf-8 -*-
import consort
from abjad import durationtools
from abjad import indicatortools
from abjad import rhythmmakertools
from abjad import selectortools
from abjad import spannertools


rh_sand_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        bow_contact_points=consort.AttachmentExpression(
            attachments=(
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint((1, 4)),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint((1, 4)),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint((1, 4)),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint((1, 4)),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint((1, 4)),
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint((1, 4)),
                ),
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_spanner=spannertools.BowSpanner(),
        ),
    rhythm_maker=consort.CompositeRhythmMaker(
        last=rhythmmakertools.IncisedRhythmMaker(
            incise_specifier=rhythmmakertools.InciseSpecifier(
                prefix_counts=[0],
                suffix_talea=[1],
                suffix_counts=[1],
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