# -*- encoding: utf-8 -*-
import armilla
import consort
from abjad import new
from abjad import durationtools
from abjad import indicatortools
from abjad import rhythmmakertools
from abjad import selectortools
from abjad import spannertools


segment_maker = armilla.ArmillaSegmentMaker(
    desired_duration_in_seconds=10,
    discard_final_silence=True,
    name='Notation Test',
    rehearsal_mark='Z',
    repeat=True,
    tempo=indicatortools.Tempo((1, 4), 96),
    )


timespan_maker = armilla.ArmillaTimespanMaker(
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(0, 0, 0, 0, 1),
        denominator=16,
        ),
    playing_talea=rhythmmakertools.Talea(
        counts=(2, 2, 2, 3, 2, 4),
        denominator=16,
        ),
    playing_groupings=(1, 1, 2),
    silence_talea=rhythmmakertools.Talea(
        counts=(2, 2, 3, 7, 1, 2, 2, 5),
        denominator=8,
        ),
    synchronize_step=True,
    timespan_specifier=consort.TimespanSpecifier(
        #forbid_fusing=True,
        minimum_duration=durationtools.Duration(1, 8),
        ),
    )


rh_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        bow_contact_points=consort.AttachmentExpression(
            attachments=armilla.materials.bow_contact_points_a,
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_spanner=consort.AttachmentExpression(
            attachments=spannertools.BowSpanner(),
            selector=selectortools.Selector().by_leaves().by_counts(
                [2], cyclic=True, fuse_overhang=True, overhang=True),
            ),
        dynamic_phrasings=armilla.DynamicPhrasing(
            dynamic_tokens='f',
            transitions=('constante',),
            ),
        ),
    rhythm_maker=rhythmmakertools.EvenDivisionRhythmMaker(
        denominators=[16],
        extra_counts_per_division=(0, 0, 1, 2, 0, 0, 0, 1),
        ),
    )


lh_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        bend_after=consort.AttachmentExpression(
            attachments=(
                None,
                consort.IndicatorExpression(
                    indicator=indicatortools.BendAfter(4),
                    is_annotation=True,
                    ),
                None,
                ),
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
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
    pitch_handler=consort.AbsolutePitchHandler(
        pitches="a c' a c' a c' bqs gf af b",
        ),
    rhythm_maker=consort.CompositeRhythmMaker(
        last=rhythmmakertools.NoteRhythmMaker(),
        rest=new(
            armilla.materials.bow_rhythm_maker_a,
            denominators=(8,),
            ),
        ),
    )


segment_maker.add_setting(
    timespan_maker=timespan_maker,
    viola_1_rh=rh_music_specifier,
    viola_2_rh=rh_music_specifier,
    viola_1_lh=lh_music_specifier,
    viola_2_lh=lh_music_specifier,
    )