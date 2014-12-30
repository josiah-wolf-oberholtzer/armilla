# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools
import armilla
import consort


sustained_timespan_maker = armilla.makers.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 7, 4, 5),
        denominator=8,
        ),
    playing_groupings=(5, 6, 4, 8, 9),
    repeat=True,
    rotation_indices=(1, 0, 1, 0, -1),
    silence_talea=rhythmmakertools.Talea(
        counts=(3, 5, 3, 2, 5, 3),
        denominator=8,
        ),
    step_anchor=Right,
    synchronize_groupings=False,
    synchronize_step=False,
    timespan_specifier=consort.tools.TimespanSpecifier(
        minimum_duration=durationtools.Duration(1, 4),
        ),
    )