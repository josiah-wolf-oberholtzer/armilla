# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import durationtools
from abjad import indicatortools
from abjad import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=60,
    discard_final_silence=True,
    name='The Long Dune (ii)',
    rehearsal_mark='H',
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 36),
    )

#    timespan_maker=armilla.ArmillaTimespanMaker(
#        initial_silence_talea=rhythmmakertools.Talea(
#            counts=(1, 0),
#            denominator=8,
#            ),
#        padding=durationtools.Duration(1, 8),
#        playing_talea=rhythmmakertools.Talea(
#            counts=(1, 1, 2),
#            denominator=8,
#            ),
#        playing_groupings=(1, 2, 1, 2, 2, 3),
#        silence_talea=rhythmmakertools.Talea(
#            counts=(1, 1, 1, 2, 1, 1, 2),
#            denominator=8,
#            ),
#        timespan_specifier=consort.TimespanSpecifier(
#            minimum_duration=0,
#            ),
#        ),