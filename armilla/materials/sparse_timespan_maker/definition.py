# -*- encoding: utf-8 -*-
import consort
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools


sparse_timespan_maker = consort.TaleaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    padding=durationtools.Duration(1, 8),
    playing_talea=rhythmmakertools.Talea(
        counts=(1, 1, 2),
        denominator=8,
        ),
    playing_groupings=(1, 2, 1, 2, 2, 3),
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 1, 2, 1, 1, 2),
        denominator=8,
        ),
    timespan_specifier=consort.TimespanSpecifier(
        minimum_duration=0,
        ),
    )