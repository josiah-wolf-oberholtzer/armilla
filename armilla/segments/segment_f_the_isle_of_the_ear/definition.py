# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad import durationtools
from abjad import indicatortools


### SEGMENT MAKER ###

segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=40 / 2,
    discard_final_silence=True,
    name='The Isle of the Ear',
    rehearsal_mark='F',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 108),
    )

### ATTACHMENTS ###

### MUSIC SPECIFIERS ###

rh_jete = armilla.materials.right_hand_jete_music_specifier
lh_glissandi = armilla.materials.left_hand_glissandi_music_specifier,
rh_stasis = armilla.materials.right_hand_stasis_music_specifier
lh_stasis = armilla.materials.left_hand_stasis_music_specifier

### SETTINGS ###

segment_maker.add_setting(
    timespan_maker=new(
        armilla.materials.sustained_timespan_maker,
        include_viola_1_inner_starts=False,
        include_viola_2_inner_starts=False,
        ),
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 2),
        parts=(1,),
        ),
    viola_1_rh=rh_stasis,
    viola_2_rh=rh_stasis,
    viola_1_lh=lh_stasis,
    viola_2_lh=lh_stasis,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.synchronized_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 3),
        parts=(0,),
        ),
    viola_1_rh=rh_jete,
    viola_2_rh=rh_jete,
    viola_1_lh=lh_glissandi,
    viola_2_lh=lh_glissandi,
    )

segment_maker.add_setting(
    timespan_maker=new(
        armilla.materials.sparse_timespan_maker,
        padding=durationtools.Duration(1, 8),
        playing_talea__counts=(2, 1, 2, 1, 1),
        playing_groupings=(1, 1, 2),
        silence_talea__denominator=4,
        ),
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(2, 1, 1),
        parts=(2,),
        ),
    viola_1_rh=rh_jete,
    viola_2_rh=rh_jete,
    viola_1_lh=lh_glissandi,
    viola_2_lh=lh_glissandi,
    )