# -*- encoding: utf-8 -*-
import armilla
from abjad import indicatortools
from abjad import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=10,
    discard_final_silence=True,
    name='Wellogy',
    rehearsal_mark='C',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 48),
    )