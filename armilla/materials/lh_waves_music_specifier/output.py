# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import mathtools
from abjad.tools import pitchtools
from abjad.tools import rhythmmakertools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


lh_waves_music_specifier = consort.tools.MusicSpecifier(
    attachment_handler=consort.tools.AttachmentHandler(
        glissando=consort.tools.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    spannertools.Glissando(
                        allow_repeated_pitches=False,
                        allow_ties=False,
                        parenthesize_repeated_pitches=True,
                        ),
                    ]
                ),
            selector=selectortools.Selector(
                callbacks=(
                    selectortools.PrototypeSelectorCallback(
                        prototype=scoretools.Leaf,
                        ),
                    consort.tools.AfterGraceSelectorCallback(),
                    ),
                ),
            ),
        ),
    grace_handler=consort.tools.GraceHandler(
        counts=(0, 1, 2, 0, 0, 0),
        only_if_preceded_by_nonsilence=True,
        ),
    pitch_handler=consort.tools.AbsolutePitchHandler(
        deviations=datastructuretools.CyclicTuple(
            [
                pitchtools.NumberedInterval(0),
                pitchtools.NumberedInterval(0),
                pitchtools.NumberedInterval(0),
                pitchtools.NumberedInterval(0),
                pitchtools.NumberedInterval(0.5),
                pitchtools.NumberedInterval(0),
                ]
            ),
        grace_expressions=datastructuretools.CyclicTuple(
            [
                consort.tools.HarmonicExpression(
                    touch_interval=pitchtools.NamedInterval('+P4'),
                    ),
                consort.tools.HarmonicExpression(
                    touch_interval=pitchtools.NamedInterval('+M3'),
                    ),
                consort.tools.HarmonicExpression(
                    touch_interval=pitchtools.NamedInterval('+P5'),
                    ),
                ]
            ),
        pitch_specifier=consort.tools.PitchSpecifier(
            pitch_segments=(
                pitchtools.PitchSegment(
                    (
                        pitchtools.NamedPitch('a'),
                        pitchtools.NamedPitch("c'"),
                        pitchtools.NamedPitch('a'),
                        pitchtools.NamedPitch('a'),
                        pitchtools.NamedPitch("c'"),
                        ),
                    item_class=pitchtools.NamedPitch,
                    ),
                pitchtools.PitchSegment(
                    (
                        pitchtools.NamedPitch('a'),
                        pitchtools.NamedPitch('g'),
                        pitchtools.NamedPitch("c'"),
                        pitchtools.NamedPitch('gs'),
                        pitchtools.NamedPitch("d'"),
                        ),
                    item_class=pitchtools.NamedPitch,
                    ),
                pitchtools.PitchSegment(
                    (
                        pitchtools.NamedPitch('a'),
                        pitchtools.NamedPitch("c'"),
                        ),
                    item_class=pitchtools.NamedPitch,
                    ),
                ),
            ratio=mathtools.Ratio(1, 1, 1),
            ),
        ),
    rhythm_maker=consort.tools.CompositeRhythmMaker(
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