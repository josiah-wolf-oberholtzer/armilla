# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import rhythmmakertools
import armilla


dense_timespan_maker = armilla.makers.ArmillaTimespanMaker(
    include_viola_1_inner_starts=True,
    include_viola_2_inner_starts=True,
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 7, 4, 5),
        denominator=8,
        ),
    playing_groupings=(3, 4, 2, 4),
    repeat=True,
    rotation_indices=(1, 0, 1, 0, -1),
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 1, 2, 1, 1, 2),
        denominator=8,
        ),
    step_anchor=Right,
    synchronize_groupings=False,
    synchronize_step=False,
    )