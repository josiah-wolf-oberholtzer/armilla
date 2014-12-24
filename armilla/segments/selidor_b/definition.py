# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad import indicatortools
from abjad import rhythmmakertools
from abjad import selectortools
from abjad import spannertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=20,
    discard_final_silence=True,
    name='B',
    rehearsal_mark='Selidor',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 48),
    )


waves_timespan_maker = armilla.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 7, 4, 5),
        denominator=8,
        ),
    playing_groupings=(3, 4, 2, 4),
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 1, 2, 1, 1, 2),
        denominator=8,
        ),
    rotation_indices=(1, 0, 1, 0, -1),
    )


waves_rh_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        bow_contact_points=consort.AttachmentExpression(
            attachments=(
                indicatortools.BowContactPoint(0),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint((3, 5)),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint((3, 5)),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint((3, 5)),
                indicatortools.BowContactPoint((3, 5)),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint((3, 5)),
                indicatortools.BowContactPoint((3, 5)),
                indicatortools.BowContactPoint((4, 5)),
                ),
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_motion_techniques=consort.AttachmentExpression(
            attachments=indicatortools.BowMotionTechnique('circular'),
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_spanner=spannertools.BowSpanner(),
        dynamic_phrasings=armilla.DynamicPhrasing(
            dynamic_tokens='p ppp p ppp p ppp',
            ),
        ),
    rhythm_maker=new(
        armilla.materials.rh_rhythm_maker_a,
        rest__denominators=[4],
        ),
    )


waves_lh_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        glissando=consort.AttachmentExpression(
            attachments=spannertools.Glissando(
                allow_repeated_pitches=False,
                allow_ties=False,
                parenthesize_repeated_pitches=True,
                ),
            selector=selectortools.Selector().by_leaves(
                ).with_callback(armilla.AfterGraceSelectorCallback())
            ),
        ),
    grace_handler=consort.GraceHandler(
        counts=(0, 1, 2, 0, 0, 0),
        only_if_preceded_by_nonsilence=True,
        ),
    pitch_handler=consort.AbsolutePitchHandler(
        deviations=(0, 0, 0, 0, 0.5, 0),
        grace_expressions=(
            consort.HarmonicExpression('P4'),
            consort.HarmonicExpression('M3'),
            consort.HarmonicExpression('P5'),
            ),
        pitch_specifier=consort.PitchSpecifier(
            pitch_segments=(
                "a c' a a c'",
                "a g c' gs d'",
                "a c'",
                ),
            ratio=(1, 1, 1),
            ),
        ),
    rhythm_maker=armilla.materials.lh_rhythm_maker_a,
    )


segment_maker.add_setting(
    timespan_maker=waves_timespan_maker,
    viola_1_rh=waves_rh_music_specifier,
    viola_2_rh=waves_rh_music_specifier,
    viola_1_lh=waves_lh_music_specifier,
    viola_2_lh=waves_lh_music_specifier,
    )