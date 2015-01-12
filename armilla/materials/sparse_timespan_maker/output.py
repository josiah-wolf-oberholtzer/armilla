# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools
import consort


sparse_timespan_maker = consort.tools.TaleaTimespanMaker(
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
    repeat=True,
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 1, 2, 1, 1, 2),
        denominator=8,
        ),
    step_anchor=Right,
    synchronize_groupings=False,
    synchronize_step=False,
    timespan_specifier=consort.tools.TimespanSpecifier(
        minimum_duration=durationtools.Duration(0, 1),
        ),
    )