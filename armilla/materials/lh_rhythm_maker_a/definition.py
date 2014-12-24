# -*- encoding: utf-8 -*-
from abjad import *
import consort


lh_rhythm_maker_a = consort.CompositeRhythmMaker(
    last=rhythmmakertools.NoteRhythmMaker(),
    rest=rhythmmakertools.EvenDivisionRhythmMaker(
        denominators=(4,),
        extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
        duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            decrease_durations_monotonically=True,
            forbidden_written_duration=durationtools.Duration(1, 4),
            permit_meter_rewriting=False,
            ),
        ),
    )