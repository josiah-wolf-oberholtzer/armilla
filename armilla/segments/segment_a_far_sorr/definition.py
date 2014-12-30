# -*- encoding: utf-8 -*-
import armilla
from abjad import indicatortools
from abjad import rhythmmakertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=10,
    discard_final_silence=True,
    name='Far Sorr',
    rehearsal_mark='A',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 48),
    )