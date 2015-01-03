# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import selectortools
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

### ATTACHMENTS ###

### MUSIC SPECIFIERS ###

lh_glissandi = new(
    armilla.materials.left_hand_glissandi_music_specifier,
    attachment_handler__bend_after=consort.AttachmentExpression(
        attachments=indicatortools.BendAfter(4),
        selector=selectortools.Selector().by_leaves()[-1],
        ),
    pitch_handler__pitch_specifier="fs' gs' as'",
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            permit_meter_rewriting=False,
            ),
        ),
    )
lh_stasis = armilla.materials.left_hand_stasis_music_specifier
rh_jete = armilla.materials.right_hand_jete_music_specifier
rh_stasis = armilla.materials.right_hand_stasis_music_specifier

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
    viola_1_lh=lh_stasis,
    viola_1_rh=rh_stasis,
    viola_2_lh=lh_stasis,
    viola_2_rh=rh_stasis,
    )

segment_maker.add_setting(
    timespan_maker=new(
        armilla.materials.sparse_timespan_maker,
        playing_talea__counts=(2, 1, 2, 1, 1),
        ),
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 2),
        parts=(0,),
        ),
    viola_1_lh=lh_glissandi,
    viola_1_rh=rh_jete,
    viola_2_lh=lh_glissandi,
    viola_2_rh=rh_jete,
    )

segment_maker.add_setting(
    timespan_maker=new(
        armilla.materials.sparse_timespan_maker,
        playing_talea__counts=(2, 1, 2, 1, 1),
        playing_groupings=(1, 1, 2),
        silence_talea__denominator=2,
        ),
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(2, 1),
        parts=(1,),
        ),
    viola_1_lh=lh_glissandi,
    viola_1_rh=rh_jete,
    viola_2_lh=lh_glissandi,
    viola_2_rh=rh_jete,
    )