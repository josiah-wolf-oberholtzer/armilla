# -*- encoding: utf-8 -*-
import armilla
from abjad.tools import indicatortools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=10,
    discard_final_silence=True,
    rehearsal_mark='Test',
    tempo=indicatortools.Tempo((1, 4), 72),
    )