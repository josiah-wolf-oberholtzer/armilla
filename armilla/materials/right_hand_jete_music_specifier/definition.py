# -*- encoding: utf-8 -*-
import consort
from abjad import durationtools
from abjad import indicatortools
from abjad import rhythmmakertools
from abjad import scoretools
from abjad import selectortools
from abjad import spannertools


right_hand_jete_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        bow_contact_points=consort.AttachmentExpression(
            attachments=(
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint((3, 5)),
                ),
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_contact_spanner=spannertools.BowContactSpanner(),
        bow_motion_techniques=consort.AttachmentExpression(
            attachments=indicatortools.BowMotionTechnique('jete'),
            selector=selectortools.Selector()
                .by_leaves()
                .get_slice(stop=-1)
                .by_counts(
                    [2, 1, 2],
                    overhang=True,
                    fuse_overhang=True,
                    rotate=True,
                    )
                .get_item(0, apply_to_each=False)
                .flatten(),
            ),
        dynamic_expressions=consort.AttachmentExpression(
            attachments=(
                indicatortools.Dynamic('mf'),
                indicatortools.Dynamic('mp'),
                ),
            selector=selectortools.Selector().by_leaves()[0]
            ),
        string_contact_points=consort.AttachmentExpression(
            attachments=(
                indicatortools.StringContactPoint('ordinario'),
                indicatortools.StringContactPoint('sul ponticello'),
                indicatortools.StringContactPoint('molto sul ponticello'),
                indicatortools.StringContactPoint('sul tasto'),
                ),
            scope=scoretools.Voice,
            selector=selectortools.Selector()
                .with_callback(consort.PhrasedSelectorCallback())
                .by_counts(
                    [1, -1,],
                    cyclic=True,
                    nonempty=True,
                    overhang=True,
                    )
                .flatten()
            ),
        string_contact_spanner=consort.StringContactSpanner(),
        ),
    rhythm_maker=consort.CompositeRhythmMaker(
        last=rhythmmakertools.IncisedRhythmMaker(
            incise_specifier=rhythmmakertools.InciseSpecifier(
                prefix_counts=[0],
                suffix_talea=[1],
                suffix_counts=[1],
                talea_denominator=16,
                ),
            ),
        default=rhythmmakertools.EvenDivisionRhythmMaker(
            denominators=(8, 8, 4),
            extra_counts_per_division=(0, 0, 1, 0, 1, 2),
            duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbidden_written_duration=durationtools.Duration(1, 4),
                forbid_meter_rewriting=True,
                ),
            ),
        ),
    )