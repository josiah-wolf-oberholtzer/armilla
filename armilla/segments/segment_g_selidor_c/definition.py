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
    rehearsal_mark='G',
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
        selector=selectortools.Selector().by_leaves().by_counts(
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
            "a' c'' a' c'' c'' a''",
            ),
        ratio=(1, 1, 2),
        ),
    attachment_handler__trill_spanner=intermittent_trills,
    )

### SETTINGS ###

segment_maker.add_setting(
    timespan_maker=armilla.materials.dense_timespan_maker,
    viola_1_rh=rh_circular,
    viola_2_rh=rh_circular,
    viola_1_lh=lh_glissandi,
    viola_2_lh=lh_glissandi,
    )