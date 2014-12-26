# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad import indicatortools
from abjad import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=30,
    discard_final_silence=True,
    name='C',
    rehearsal_mark='Selidor',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 36),
    )

waves_timespan_maker = armilla.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=4,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 4, 3),
        denominator=8,
        ),
    playing_groupings=(3, 3, 2, 2),
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 2),
        denominator=8,
        ),
    rotation_indices=(1, 1, 0),
    )

rh_waves_music_specifier = armilla.materials.rh_waves_music_specifier,

lh_waves_music_specifier = new(
    armilla.materials.lh_waves_music_specifier,
    pitch_handler__pitch_specifier=consort.PitchSpecifier(
        pitch_segments=(
            "a c' a a c'",
            "c' ef' g c' c' ef'",
            "a' c'' a' c'' c''",
            ),
        ratio=(1, 1, 2),
        ),
    )

segment_maker.add_setting(
    timespan_maker=waves_timespan_maker,
    viola_1_rh=rh_waves_music_specifier,
    viola_2_rh=rh_waves_music_specifier,
    viola_1_lh=lh_waves_music_specifier,
    viola_2_lh=lh_waves_music_specifier,
    )