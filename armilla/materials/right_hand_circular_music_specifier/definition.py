# -*- encoding: utf-8 -*-
import consort
from abjad import durationtools
from abjad import indicatortools
from abjad import rhythmmakertools
from abjad import selectortools
from abjad import scoretools
from abjad import spannertools


right_hand_circular_music_specifier = consort.MusicSpecifier(
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
            selector=selectortools.Selector().by_leaf().flatten(),
            ),
        bow_contact_spanner=spannertools.BowContactSpanner(),
        bow_motion_techniques=consort.AttachmentExpression(
            attachments=indicatortools.BowMotionTechnique('circular'),
            selector=selectortools.Selector().by_leaf().flatten(),
            ),
        dynamic_expressions=consort.DynamicExpression(
            dynamic_tokens='p ppp p ppp p ppp',
            ),
        string_contact_points=consort.AttachmentExpression(
            attachments=(
                None,
                indicatortools.StringContactPoint('ordinario'),
                indicatortools.StringContactPoint('sul ponticello'),
                indicatortools.StringContactPoint('ordinario'),
                indicatortools.StringContactPoint('ordinario'),
                indicatortools.StringContactPoint('molto sul ponticello'),
                ),
            scope=scoretools.Voice,
            selector=selectortools.Selector().append_callback(
                consort.PhrasedSelectorCallback()).flatten(),
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
            denominators=(4,),
            extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
            duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbidden_written_duration=durationtools.Duration(1, 4),
                forbid_meter_rewriting=True,
                ),
            ),
        ),
    )