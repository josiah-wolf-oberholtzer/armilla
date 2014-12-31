# -*- encoding: utf-8 -*-
import armilla
from abjad.tools import rhythmmakertools


sustained_timespan_maker = armilla.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(5, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 7, 4, 5),
        denominator=8,
        ),
    playing_groupings=(5, 6, 4, 8, 9),
    silence_talea=rhythmmakertools.Talea(
        counts=(3, 5, 3, 2, 5, 3),
        denominator=8,
        ),
    rotation_indices=(1, 0, 1, 0, -1),
    )