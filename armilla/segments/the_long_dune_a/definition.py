# -*- encoding: utf-8 -*-
import armilla
from abjad import indicatortools
from abjad import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=10,
    discard_final_silence=True,
    name='A',
    rehearsal_mark='The Long Dune',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 72),
    )

rh_bark_music_specifier = armilla.materials.rh_bark_music_specifier

lh_bark_music_specifier = armilla.materials.lh_bark_music_specifier

segment_maker.add_setting(
    timespan_maker=armilla.ArmillaTimespanMaker(
        initial_silence_talea=rhythmmakertools.Talea(
            counts=(1, 0),
            denominator=8,
            ),
        playing_talea=rhythmmakertools.Talea(
            counts=(3, 4, 2, 2, 3),
            denominator=8,
            ),
        playing_groupings=(1, 2, 1, 2, 2, 3),
        silence_talea=rhythmmakertools.Talea(
            counts=(1, 1, 1, 2, 1, 1, 2),
            denominator=8,
            ),
        ),
    viola_1_rh=rh_bark_music_specifier,
    viola_2_rh=rh_bark_music_specifier,
    viola_1_lh=lh_bark_music_specifier,
    viola_2_lh=lh_bark_music_specifier,
    )