# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import scoretools
from abjad.tools import selectortools


### SEGMENT MAKER ###

segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=90,
    discard_final_silence=True,
    name='Far Sorr',
    rehearsal_mark='A',
    repeat=False,
    tempo=indicatortools.Tempo((1, 4), 36),
    )

### ATTACHMENTS ###

dietro_ponticello = consort.AttachmentExpression(
    attachments=indicatortools.StringContactPoint('dietro ponticello'),
    scope=scoretools.Voice,
    selector=selectortools.Selector().by_leaves(),
    )
intermittent_accents = armilla.materials.intermittent_accents
intermittent_circular = armilla.materials.intermittent_circular
intermittent_glissandi = armilla.materials.intermittent_glissandi
intermittent_tremoli = armilla.materials.intermittent_tremoli

### MUSIC SPECIFIERS ###

lh_diads = new(
    armilla.materials.left_hand_diads_music_specifier,
    minimum_phrase_duration=durationtools.Duration(1, 4),
    )
lh_dietro = armilla.materials.left_hand_dietro_music_specifier
lh_pizzicati = armilla.materials.left_hand_pizzicati_music_specifier
rh_overpressure = new(
    armilla.materials.right_hand_overpressure_music_specifier,
    minimum_phrase_duration=durationtools.Duration(1, 4),
    )
rh_pizzicati = armilla.materials.right_hand_pizzicati_music_specifier

### OVERPRESSURE ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.sustained_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(0,),
        ratio=(1, 1, 1),
        ),
    viola_1_lh=lh_dietro,
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__string_contact_points=dietro_ponticello,
        ),
    viola_2_lh=lh_diads,
    viola_2_rh=rh_overpressure,
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(1,),
        ratio=(1, 1, 1),
        ),
    viola_1_lh=new(
        lh_diads,
        attachment_handler__glissando=intermittent_glissandi,
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=intermittent_accents,
        attachment_handler__stem_tremolo_spanner=intermittent_tremoli,
        rhythm_maker__default__denominators=(4, 4, 4, 8),
        ),
    viola_2_lh=lh_diads,
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__articulations=intermittent_accents,
        attachment_handler__stem_tremolo_spanner=intermittent_tremoli,
        rhythm_maker__default__denominators=(4, 4, 4, 8, 4, 8),
        ),
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.sustained_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(2,),
        ratio=(1, 1, 1),
        ),
    viola_1_rh=new(
        rh_overpressure,
        attachment_handler__articulations=intermittent_accents,
        rhythm_maker__default__denominators=(4, 4, 4, 16, 4, 16),
        ),
    viola_2_rh=new(
        rh_overpressure,
        attachment_handler__stem_tremolo_spanner=intermittent_tremoli,
        attachment_handler__bow_motion_technique_x=intermittent_circular,
        ),
    viola_1_lh=new(
        lh_diads,
        attachment_handler__glissando=intermittent_glissandi,
        ),
    viola_2_lh=new(
        lh_diads,
        attachment_handler__glissando=intermittent_glissandi,
        ),
    )

### PIZZICATI ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.sparse_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        parts=(1,),
        ratio=(5, 1),
        ),
    viola_2_rh=rh_pizzicati,
    viola_2_lh=lh_pizzicati,
    )

#if __name__ == '__main__':
#    lilypond_file = segment_maker()
#    formatted = format(lilypond_file)