# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import indicatortools
from abjad import rhythmmakertools
from abjad import selectortools
from abjad import spannertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=20,
    discard_final_silence=True,
    name='Notation Test',
    rehearsal_mark='W',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 48),
    )


timespan_maker = armilla.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(5, 6, 7, 5),
        denominator=8,
        ),
    playing_groupings=(3, 4, 2, 3, 5),
    silence_talea=rhythmmakertools.Talea(
        counts=(1, 1, 1, 2, 1, 1, 2),
        denominator=8,
        ),
    rotation_indices=(0, 1, 1, 0, -1),
    )


rh_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        bow_contact_points=consort.AttachmentExpression(
            attachments=armilla.materials.bow_contact_points_a,
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_motion_techniques=consort.AttachmentExpression(
            attachments=indicatortools.BowMotionTechnique('circular'),
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_spanner=spannertools.BowSpanner(),
        dynamic_phrasings=armilla.DynamicPhrasing(
            dynamic_tokens='p ppp p ppp p ppp mf ppp',
            ),
        ),
    rhythm_maker=armilla.materials.rh_rhythm_maker_a,
    )


lh_music_specifier = consort.MusicSpecifier(
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
        grace_expressions=(
            consort.HarmonicExpression('P4'),
            consort.HarmonicExpression('M3'),
            consort.HarmonicExpression('P5'),
            ),
        pitch_specifier="a c' a c' a c' bqs gf af b",
        ),
    rhythm_maker=armilla.materials.lh_rhythm_maker_a,
    )


segment_maker.add_setting(
    timespan_maker=timespan_maker,
    viola_1_rh=rh_music_specifier,
    viola_2_rh=rh_music_specifier,
    viola_1_lh=lh_music_specifier,
    viola_2_lh=lh_music_specifier,
    )