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
        selector=selectortools.Selector().by_leaf()[-1],
        ),
    pitch_handler__pitch_specifier="fs' gs' as'",
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            forbid_meter_rewriting=True,
            ),
        ),
    )
lh_stasis = armilla.materials.left_hand_stasis_music_specifier
rh_jete = armilla.materials.right_hand_jete_music_specifier
rh_stasis = armilla.materials.right_hand_stasis_music_specifier

### SETTINGS ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.sustained_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 2),
        parts=(1,),
        ),
    viola_1=consort.CompositeMusicSpecifier(
        discard_inner_offsets=True,
        primary_music_specifier=rh_stasis,
        rotation_indices=(1, 0, 1, 0, -1),
        secondary_music_specifier=lh_stasis,
        ),
    viola_2=consort.CompositeMusicSpecifier(
        discard_inner_offsets=True,
        primary_music_specifier=rh_stasis,
        rotation_indices=(1, 0, 1, 0, -1),
        secondary_music_specifier=lh_stasis,
        ),
    )

segment_maker.add_setting(
    timespan_maker=armilla.materials.synchronized_timespan_maker,
    timespan_identifier=consort.RatioPartsExpression(
        ratio=(1, 3),
        parts=(0,),
        ),
    viola_1=consort.CompositeMusicSpecifier(
        primary_music_specifier=rh_jete,
        secondary_music_specifier=lh_glissandi,
        ),
    viola_2=consort.CompositeMusicSpecifier(
        primary_music_specifier=rh_jete,
        secondary_music_specifier=lh_glissandi,
        ),
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
    viola_1=consort.CompositeMusicSpecifier(
        primary_music_specifier=rh_jete,
        secondary_music_specifier=lh_glissandi,
        ),
    viola_2=consort.CompositeMusicSpecifier(
        primary_music_specifier=rh_jete,
        secondary_music_specifier=lh_glissandi,
        ),
    )