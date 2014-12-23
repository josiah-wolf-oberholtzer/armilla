# -*- encoding: utf-8 -*-
from __future__ import print_function
from abjad import inspect_
from abjad import indicatortools
from abjad import pitchtools
from abjad import scoretools
from abjad import selectiontools
from consort.tools.LogicalTieExpression import LogicalTieExpression


class DoubleStop(LogicalTieExpression):

    ### CLASS VARIABLES ###

    __slots__ = ()

    ### INITIALIZER ###

    def __init__(self):
        pass

    ### SPECIAL METHODS ###

    def __call__(
        self,
        logical_tie,
        pitch_range=None,
        ):
        assert isinstance(logical_tie, selectiontools.LogicalTie), logical_tie
        leaf = logical_tie.head
        initial_pitch = leaf.written_pitch
        tuning = inspect_(leaf).get_effective(indicatortools.Tuning)
        string_positions = self._get_string_positions(initial_pitch, tuning)
        if len(string_positions) == 1:
            pass
        elif len(string_positions) == 4:
            pass
        else:
            pass
        pitches = None
        for i, leaf in enumerate(logical_tie):
            chord = scoretools.Chord(leaf)
            chord.written_pitches = pitches
            self._replace(leaf, chord)

    ### PRIVATE METHODS ###

    def _get_string_positions(initial_pitch, tuning):
        positions = []
        initial_pitch = pitchtools.NumberedPitch(initial_pitch)
        for pitch in sorted(tuning.pitches):
            pitch = pitchtools.NumberedPitch(initial_pitch)
            if initial_pitch < pitch:
                break
            interval = pitch - initial_pitch
            positions.append(interval)
        return positions