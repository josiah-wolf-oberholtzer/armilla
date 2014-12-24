# -*- encoding: utf-8 -*-
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools
import consort


bow_rhythm_maker_b = consort.tools.CompositeRhythmMaker(
    last=rhythmmakertools.IncisedRhythmMaker(
        incise_specifier=rhythmmakertools.InciseSpecifier(
            prefix_counts=(0,),
            suffix_talea=(1,),
            suffix_counts=(1,),
            talea_denominator=16,
            ),
        ),
    rest=rhythmmakertools.EvenDivisionRhythmMaker(
        denominators=(8, 8, 4, 16, 4, 16, 8, 8, 4),
        extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
        duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            decrease_durations_monotonically=True,
            forbidden_written_duration=durationtools.Duration(1, 4),
            permit_meter_rewriting=False,
            ),
        ),
    )