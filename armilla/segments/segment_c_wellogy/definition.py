# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import durationtools
from abjad.tools import indicatortools
import armilla
import consort


### SEGMENT MAKER ###

segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=30 / 2,
    discard_final_silence=True,
    name='Wellogy',
    rehearsal_mark='C',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 108),
    )

### MUSIC SPECIFIERS ###

rh_jete = armilla.materials.right_hand_jete_music_specifier

### ATTACHMENTS ###

### SETTINGS ###

#segment_maker.add_setting(
#    timespan_maker=new(
#        armilla.materials.sparse_timespan_maker,
#        playing_talea__counts=(2, 2, 2, 3, 2, 3, 4),
#        seed=1,
#        ),
#    timespan_identifier=None,
#    viola_1_rh=consort.MusicSpecifier(),
#    viola_2_rh=consort.MusicSpecifier(),
#    viola_1_lh=consort.MusicSpecifier(),
#    viola_2_lh=consort.MusicSpecifier(),
#    )

segment_maker.add_setting(
    timespan_maker=new(
        armilla.materials.sparse_timespan_maker,
        padding=durationtools.Duration(1, 8),
        playing_talea__counts=(2, 1, 2, 1, 1),
        ),
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 1),
        parts=(0,),
        ),
    viola_1_rh=rh_jete,
    viola_2_rh=rh_jete,
    viola_1_lh=consort.MusicSpecifier(),
    viola_2_lh=consort.MusicSpecifier(),
    )

segment_maker.add_setting(
    timespan_maker=new(
        armilla.materials.sparse_timespan_maker,
        padding=durationtools.Duration(1, 8),
        playing_talea__counts=(2, 1, 2, 1, 1),
        playing_groupings=(1, 1, 2),
        silence_talea__denominator=2,
        ),
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 1),
        parts=(1,),
        ),
    viola_1_rh=rh_jete,
    viola_2_rh=rh_jete,
    viola_1_lh=consort.MusicSpecifier(),
    viola_2_lh=consort.MusicSpecifier(),
    )