# -*- encoding: utf-8 -*-
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools


bow_rhythm_maker_a = rhythmmakertools.EvenDivisionRhythmMaker(
    denominators=(8, 8, 4, 16, 4, 16, 8, 8, 4),
    extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
    duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
        decrease_durations_monotonically=True,
        forbidden_written_duration=durationtools.Duration(1, 4),
        permit_meter_rewriting=False,
        ),
    )