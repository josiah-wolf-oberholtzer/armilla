# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools


synchronized_timespan_maker = armilla.ArmillaTimespanMaker(
    padding=durationtools.Duration(1, 8),
    playing_talea=rhythmmakertools.Talea(
        counts=(1, 1, 2, 1, 2, 2, 3),
        denominator=8,
        ),
    playing_groupings=(1, 2),
    silence_talea=rhythmmakertools.Talea(
        counts=(3, 4, 5, 2, 7, 9),
        denominator=8,
        ),
    synchronize_step=True,
    timespan_specifier=consort.TimespanSpecifier(
        minimum_duration=0,
        ),
    )