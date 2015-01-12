# -*- encoding: utf-8 -*-
#import armilla
import consort
from abjad.tools import rhythmmakertools


dense_timespan_maker = consort.TaleaTimespanMaker(
#dense_timespan_maker = armilla.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 7, 4, 5),
        denominator=8,
        ),
    playing_groupings=(3, 4, 2, 4),
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 1, 2, 1, 1, 2),
        denominator=8,
        ),
    #rotation_indices=(1, 0, 1, 0, -1),
    )