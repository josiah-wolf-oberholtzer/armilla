# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad.tools import indicatortools
from abjad.tools import selectortools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=90,
    discard_final_silence=True,
    name='Far Sorr',
    rehearsal_mark='A',
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 36),
    )

### MUSIC SPECIFIERS ###

rh_overpressure = armilla.materials.right_hand_overpressure_music_specifier
lh_diads = armilla.materials.left_hand_diads_music_specifier

### ATTACHMENTS ###

articulations = consort.AttachmentExpression(
    attachments=(
        None,
        None,
        None,
        indicatortools.Articulation('>', 'down'),
        None,
        indicatortools.Articulation('>', 'down'),
        indicatortools.Articulation('>', 'down'),
        None,
        None,
        indicatortools.Articulation('>', 'down'),
        indicatortools.Articulation('>', 'down'),
        indicatortools.Articulation('>', 'down'),
        ),
    selector=selectortools.Selector().by_leaves()[:-1].flatten(),
    )

### OVERPRESSURE ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.sustained_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(0,),
        ratio=(1, 1, 1),
        ),
    viola_1_rh=rh_overpressure,
    viola_2_rh=rh_overpressure,
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(1,),
        ratio=(1, 1, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=articulations,
        rhythm_maker__default__denominators=(4, 4, 4, 8),
        ),
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__articulations=articulations,
        rhythm_maker__default__denominators=(4, 4, 4, 8, 4, 8),
        ),
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.sustained_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(2,),
        ratio=(1, 1, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=articulations,
        rhythm_maker__default__denominators=(4, 4, 4, 16, 4, 16),
        ),
    viola_2_rh=new(
        rh_overpressure,
        ),
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

### PIZZICATI ###

#segment_maker.add_setting(
#    timespan_maker=armilla.materials.sparse_timespan_maker,
#    timespan_identifier=consort.RatioPartsExpression(
#        parts=(1,),
#        ratio=(5, 1),
#        ),
#    viola_1_rh=None,
#    viola_2_rh=None,
#    viola_1_lh=None,
#    viola_2_lh=None,
#    )