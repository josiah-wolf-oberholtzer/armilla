# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad import indicatortools
from abjad import rhythmmakertools
from abjad import selectortools
from abjad import spannertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=30,
    discard_final_silence=True,
    rehearsal_mark='Test',
    tempo=indicatortools.Tempo((1, 4), 72),
    )


timespan_maker = armilla.ArmillaTimespanMaker(
    can_split=True,
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(1, 0),
        denominator=8,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(2, 3, 2, 3, 5, 2, 5, 4, 3, 5),
        denominator=8,
        ),
    playing_groupings=(1, 2, 2, 1, 3, 2, 4, 2, 3),
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
        bow_spanner=consort.AttachmentExpression(
            attachments=spannertools.BowSpanner(),
            ),
        ),
    rhythm_maker=armilla.materials.bow_rhythm_maker_a,
    )


lh_music_specifier = consort.MusicSpecifier(
    grace_handler=consort.GraceHandler(
        counts=(1, 2, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2),
        only_if_preceded_by_nonsilence=True,
        ),
    rhythm_maker=new(
        armilla.materials.bow_rhythm_maker_a,
        denominators=(8, 8, 4, 16),
        ),
    )


segment_maker.add_setting(
    timespan_maker=timespan_maker,
    viola_1_rh=rh_music_specifier,
    viola_2_rh=rh_music_specifier,
    viola_1_lh=lh_music_specifier,
    viola_2_lh=lh_music_specifier,
    )