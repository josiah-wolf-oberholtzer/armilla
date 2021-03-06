# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad.tools import indicatortools
from abjad.tools import spannertools
from abjad.tools import selectortools


### SEGMENT MAKER ###

segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=60 / 2,
    discard_final_silence=True,
    name='Selidor (iii)',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 72),
    )

### ATTACHMENTS ###

intermittent_trills = armilla.materials.intermittent_trills

### MUSIC SPECIFIERS ###

rh_circular = new(
    armilla.materials.right_hand_circular_music_specifier,
    attachment_handler__stem_tremolo_spanner=consort.AttachmentExpression(
        attachments=(
            None,
            spannertools.StemTremoloSpanner(),
            ),
        selector=selectortools.Selector().by_leaf().by_counts(
            [5, 1, 4, 2, 6, 3], cyclic=True,
            )
        ),
    )

lh_glissandi = new(
    armilla.materials.left_hand_glissandi_music_specifier,
    pitch_handler__pitch_specifier=consort.PitchSpecifier(
        pitch_segments=(
            "a c' a a c'",
            "c' ef' g c' c' ef'",
            "a' c'' a' c'' c'' g' a'",
            ),
        ratio=(1, 1, 2),
        ),
    attachment_handler__trill_spanner=intermittent_trills,
    )

### SETTINGS ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    viola_1=consort.CompositeMusicSpecifier(
        primary_music_specifier=rh_circular,
        rotation_indices=(1, 0, 1, 0, -1),
        secondary_music_specifier=lh_glissandi,
        ),
    viola_2=consort.CompositeMusicSpecifier(
        primary_music_specifier=rh_circular,
        rotation_indices=(1, 0, 1, 0, -1),
        secondary_music_specifier=lh_glissandi,
        ),
    )