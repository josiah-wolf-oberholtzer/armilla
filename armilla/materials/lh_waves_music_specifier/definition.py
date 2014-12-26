# -*- encoding: utf-8 -*-
import consort
from abjad import durationtools
from abjad import rhythmmakertools
from abjad import selectortools
from abjad import spannertools


lh_waves_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        glissando=consort.AttachmentExpression(
            attachments=spannertools.Glissando(
                allow_repeated_pitches=False,
                allow_ties=False,
                parenthesize_repeated_pitches=True,
                ),
            selector=selectortools.Selector().by_leaves(
                ).with_callback(consort.AfterGraceSelectorCallback())
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
    rhythm_maker=consort.CompositeRhythmMaker(
        last=rhythmmakertools.NoteRhythmMaker(),
        rest=rhythmmakertools.EvenDivisionRhythmMaker(
            denominators=(4,),
            extra_counts_per_division=(0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1),
            duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
                decrease_durations_monotonically=True,
                forbidden_written_duration=durationtools.Duration(1, 4),
                permit_meter_rewriting=False,
                ),
            ),
        ),
    )