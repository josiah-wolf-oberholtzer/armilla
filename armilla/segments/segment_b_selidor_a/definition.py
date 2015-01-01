# -*- encoding: utf-8 -*-
import armilla
from abjad import indicatortools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=10,
    discard_final_silence=True,
    name='Selidor (i)',
    rehearsal_mark='B',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 72),
    )

rh_circular = armilla.materials.right_hand_circular_music_specifier

lh_glissandi = armilla.materials.left_hand_glissandi_music_specifier

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    viola_1_rh=rh_circular,
    viola_2_rh=rh_circular,
    viola_1_lh=lh_glissandi,
    viola_2_lh=lh_glissandi,
    )