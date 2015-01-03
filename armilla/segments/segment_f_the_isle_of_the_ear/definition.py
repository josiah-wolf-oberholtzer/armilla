# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import selectortools


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

lh_glissandi = new(
    armilla.materials.left_hand_glissandi_music_specifier,
    attachment_handler__bend_after=consort.AttachmentExpression(
        attachments=(
            indicatortools.BendAfter(4),
            indicatortools.BendAfter(4),
            indicatortools.BendAfter(-4),
            ),
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
    timespan_maker=armilla.materials.synchronized_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 3),
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
        padding=durationtools.Duration(1, 8),
        playing_talea__counts=(2, 1, 2, 1, 1),
        playing_groupings=(1, 1, 2),
        silence_talea__denominator=4,
        ),
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(2, 1, 1),
        parts=(2,),
        ),
    viola_1_lh=lh_glissandi,
    viola_1_rh=rh_jete,
    viola_2_lh=lh_glissandi,
    viola_2_rh=rh_jete,
    )