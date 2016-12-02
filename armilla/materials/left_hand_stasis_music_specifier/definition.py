# -*- encoding: utf-8 -*-
import consort
from abjad.tools import durationtools
from abjad.tools import rhythmmakertools
from abjad.tools import selectortools


left_hand_stasis_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        trill_spanner=consort.AttachmentExpression(
            attachments=(
                consort.ConsortTrillSpanner(interval='+m3'),
                consort.ConsortTrillSpanner(interval='+P4'),
                consort.ConsortTrillSpanner(interval='+m3'),
                ),
            selector=selectortools.Selector().by_leaf(),
            ),
        ),
    minimum_phrase_duration=durationtools.Duration(1, 4),
    pitch_handler=consort.AbsolutePitchHandler(
        deviations=(0, 0, 0.5),
        pitch_specifier="gs'",
        ),
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            forbid_meter_rewriting=True,
            ),
        ),
    )