# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import selectortools


### SEGMENT MAKER ###

segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=60,
    discard_final_silence=False,
    is_final_segment=True,
    name='The Long Dune (ii)',
    rehearsal_mark='H',
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 36),
    )

### ATTACHMENTS ###

dynamics_a = dynamic_expressions = consort.DynamicExpression(
    dynamic_tokens='p mf p ppp f p ff',
    )
dynamics_b = dynamic_expressions = consort.DynamicExpression(
    dynamic_tokens='f p f mf ff p fff f fff mf fff',
    )
intermittent_accents = armilla.materials.intermittent_accents
intermittent_circular = armilla.materials.intermittent_circular
intermittent_tremoli = armilla.materials.intermittent_tremoli

### MUSIC SPECIFIERS ###

rh_overpressure = new(
    armilla.materials.right_hand_overpressure_music_specifier,
    minimum_phrase_duration=durationtools.Duration(1, 4),
    )

lh_diads = new(
    armilla.materials.left_hand_diads_music_specifier,
    minimum_phrase_duration=durationtools.Duration(1, 4),
    )

rh_pizzicati = armilla.materials.right_hand_pizzicati_music_specifier
lh_pizzicati = armilla.materials.left_hand_pizzicati_music_specifier

### OVERPRESSURE ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.sustained_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(0,),
        ratio=(2, 2, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__dynamic_expressions=dynamics_b,
        ),
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__dynamic_expressions=dynamics_b,
        ),
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(1,),
        ratio=(2, 2, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=intermittent_accents,
        attachment_handler__dynamic_expressions=dynamics_a,
        ),
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__articulations=intermittent_accents,
        attachment_handler__dynamic_expressions=dynamics_a,
        seed=1,
        ),
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(2,),
        ratio=(2, 2, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=consort.AttachmentExpression(
            attachments=indicatortools.Articulation('>', 'down'),
            selector=selectortools.Selector().by_leaves()[:-1].flatten(),
            ),
        attachment_handler__stem_tremolo_spanner=intermittent_tremoli,
        attachment_handler__bow_motion_technique_x=intermittent_circular,
        rhythm_maker__default__denominators=(4, 16, 4, 4, 4),
        seed=1,
        ),
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__articulations=consort.AttachmentExpression(
            attachments=indicatortools.Articulation('>', 'down'),
            selector=selectortools.Selector().by_leaves()[:-1].flatten(),
            ),
        attachment_handler__stem_tremolo_spanner=intermittent_tremoli,
        seed=2,
        ),
    viola_1_lh=lh_diads,
    viola_2_lh=lh_diads,
    )

### PIZZICATI ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.sparse_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(1,),
        ratio=(7, 1),
        ),
    viola_2_rh=rh_pizzicati,
    viola_2_lh=lh_pizzicati,
    )