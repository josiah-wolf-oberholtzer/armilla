# -*- encoding: utf-8 -*-
from abjad import *


bow_rhythm_maker_a = rhythmmakertools.EvenDivisionRhythmMaker(
    denominators=(8, 8, 4, 16, 4, 16, 8, 8, 4),
    extra_counts_per_division=(0, 0, 1, 0, 2, 1, 0, 0, 3, 2, 1),
    duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
        decrease_durations_monotonically=True,
        forbidden_written_duration=durationtools.Duration(1, 2),
        permit_meter_rewriting=False,
        ),
    )