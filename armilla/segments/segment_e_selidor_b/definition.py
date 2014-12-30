# -*- encoding: utf-8 -*-
import armilla
from abjad import indicatortools
from abjad import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=20,
    discard_final_silence=True,
    name='Selidor (ii)',
    rehearsal_mark='E',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 72),
    )

rh_circular = armilla.materials.right_hand_circular_music_specifier

lh_glissandi = armilla.materials.left_hand_glissandi_music_specifier

segment_maker.add_setting(
    timespan_maker=armilla.ArmillaTimespanMaker(
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
        rotation_indices=(1, 0, 1, 0, -1),
        ),
    viola_1_rh=rh_circular,
    viola_2_rh=rh_circular,
    viola_1_lh=lh_glissandi,
    viola_2_lh=lh_glissandi,
    )