# -*- encoding: utf-8 -*-
import armilla
from abjad import new
from abjad.tools import indicatortools


### SEGMENT MAKER ###

segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=20 / 2,
    discard_final_silence=True,
    name='Selidor (i)',
    rehearsal_mark='B',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 72),
    )

### ATTACHMENTS ###

intermittent_trills = armilla.materials.intermittent_trills

### MUSIC SPECIFIERS ###

rh_circular = armilla.materials.right_hand_circular_music_specifier
lh_glissandi = armilla.materials.left_hand_glissandi_music_specifier

### SETTINGS ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    viola_1_lh=new(
        lh_glissandi,
        attachment_handler__trill_spanner=intermittent_trills,
        ),
    viola_1_rh=rh_circular,
    viola_2_lh=new(
        lh_glissandi,
        attachment_handler__trill_spanner=intermittent_trills,
        ),
    viola_2_rh=rh_circular,
    ),