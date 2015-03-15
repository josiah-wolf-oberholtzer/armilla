# -*- encoding: utf-8 -*-
import consort
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools


right_hand_stasis_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        bow_contact_points=consort.AttachmentExpression(
            attachments=(
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint((4, 5)),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint(1),
                indicatortools.BowContactPoint((2, 5)),
                ),
            selector=selectortools.Selector().by_leaves().flatten(),
            ),
        bow_contact_spanner=spannertools.BowContactSpanner(),
        dynamic_expressions=consort.DynamicExpression(
            dynamic_tokens='p ppp',
            ),
        stem_tremolo_spanner=spannertools.StemTremoloSpanner(),
        string_contact_points=consort.AttachmentExpression(
            attachments=(
                indicatortools.StringContactPoint('ordinario'),
                indicatortools.StringContactPoint('sul tasto'),
                indicatortools.StringContactPoint('molto sul tasto'),
                ),
            scope=scoretools.Voice,
            selector=selectortools.Selector(
                ).with_callback(
                    consort.PhrasedSelectorCallback()
                ).by_counts(
                    [1, -2, 1, -2, 1, -1],
                    cyclic=True,
                    nonempty=True,
                    overhang=True,
                    ).flatten()
            ),
        string_contact_spanner=consort.StringContactSpanner(),
        ),
    minimum_phrase_duration=durationtools.Duration(1, 4),
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
            extra_counts_per_division=(0, 0, 0, 1, 0, 0, 1, 0, 1),
            duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbidden_written_duration=durationtools.Duration(1, 4),
                forbid_meter_rewriting=True,
                ),
            ),
        ),
    )