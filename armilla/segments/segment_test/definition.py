# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=30,
    discard_final_silence=True,
    rehearsal_mark='Test',
    tempo=indicatortools.Tempo((1, 4), 72),
    )

segment_maker.add_setting(
    timespan_maker=armilla.ArmillaTimespanMaker(
        can_split=True,
        initial_silence_talea=rhythmmakertools.Talea(
            counts=(1, 0),
            denominator=8,
            ),
        playing_talea=rhythmmakertools.Talea(
            counts=(2, 3, 2, 3, 5, 2, 5, 4, 3, 5),
            denominator=8,
            ),
        playing_groupings=(1, 2, 2, 1, 3, 2, 4, 2, 3),
        silence_talea=rhythmmakertools.Talea(
            counts=(1, 1, 1, 2, 1, 1, 2),
            denominator=8,
            ),
        rotation_indices=(0, 1, 1, 0, -1),
        ),
    viola_1_rh=consort.MusicSpecifier(
        rhythm_maker=rhythmmakertools.NoteRhythmMaker(
            tie_specifier=rhythmmakertools.TieSpecifier(
                tie_across_divisions=False,
                ),
            )
        ),
    viola_2_rh=consort.MusicSpecifier(
        rhythm_maker=rhythmmakertools.NoteRhythmMaker(
            tie_specifier=rhythmmakertools.TieSpecifier(
                tie_across_divisions=False,
                ),
            )
        ),
    viola_1_lh=consort.MusicSpecifier(
        rhythm_maker=rhythmmakertools.NoteRhythmMaker(
            tie_specifier=rhythmmakertools.TieSpecifier(
                tie_across_divisions=False,
                ),
            )
        ),
    viola_2_lh=consort.MusicSpecifier(
        rhythm_maker=rhythmmakertools.NoteRhythmMaker(
            tie_specifier=rhythmmakertools.TieSpecifier(
                tie_across_divisions=False,
                ),
            )
        ),
    )