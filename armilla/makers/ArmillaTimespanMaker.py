# -*- encoding: utf-8 -*-
import collections
import consort
from abjad.tools import rhythmmakertools
from abjad.tools import timespantools


class ArmillaTimespanMaker(consort.TaleaTimespanMaker):
    r'''Armilla timespan maker.

    ::

        >>> import armilla
        >>> timespan_maker = armilla.makers.ArmillaTimespanMaker(
        ...     initial_silence_talea=rhythmmakertools.Talea(
        ...         counts=(0, 1),
        ...         denominator=4,
        ...         ),
        ...     playing_talea=rhythmmakertools.Talea(
        ...         counts=(1, 2),
        ...         denominator=4,
        ...         ),
        ...     playing_groupings=(2,),
        ...     )
        >>> print(format(timespan_maker))
        armilla.makers.ArmillaTimespanMaker(
            can_split=False,
            initial_silence_talea=rhythmmakertools.Talea(
                counts=(0, 1),
                denominator=4,
                ),
            playing_talea=rhythmmakertools.Talea(
                counts=(1, 2),
                denominator=4,
                ),
            playing_groupings=(2,),
            repeat=True,
            silence_talea=rhythmmakertools.Talea(
                counts=(4,),
                denominator=16,
                ),
            step_anchor=Right,
            synchronize_groupings=False,
            synchronize_step=False,
            )

    ::

        >>> import collections
        >>> music_specifiers = collections.OrderedDict([
        ...     ('Viola 1 Bowing Voice', None),
        ...     ('Viola 1 Fingering Voice', None),
        ...     ('Viola 2 Bowing Voice', None),
        ...     ('Viola 2 Fingering Voice', None),
        ...     ])
        >>> target_timespan = timespantools.Timespan(0, 1)
        >>> timespan_inventory = timespan_maker(
        ...     music_specifiers=music_specifiers,
        ...     target_timespan=target_timespan,
        ...     )
        >>> print(format(timespan_inventory))
        timespantools.TimespanInventory(
            [
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(0, 1),
                    stop_offset=durationtools.Offset(1, 4),
                    voice_name='Viola 1 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(0, 1),
                    stop_offset=durationtools.Offset(1, 4),
                    voice_name='Viola 1 Fingering Voice',
                    ),
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(1, 4),
                    stop_offset=durationtools.Offset(1, 2),
                    voice_name='Viola 2 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(1, 4),
                    stop_offset=durationtools.Offset(1, 2),
                    voice_name='Viola 2 Fingering Voice',
                    ),
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(1, 4),
                    stop_offset=durationtools.Offset(3, 4),
                    voice_name='Viola 1 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(1, 4),
                    stop_offset=durationtools.Offset(3, 4),
                    voice_name='Viola 1 Fingering Voice',
                    ),
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(1, 2),
                    stop_offset=durationtools.Offset(1, 1),
                    voice_name='Viola 2 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(1, 2),
                    stop_offset=durationtools.Offset(1, 1),
                    voice_name='Viola 2 Fingering Voice',
                    ),
                ]
            )

    ::

        >>> timespan_maker = armilla.makers.ArmillaTimespanMaker(
        ...     initial_silence_talea=rhythmmakertools.Talea(
        ...         counts=(0, 1),
        ...         denominator=4,
        ...         ),
        ...     playing_talea=rhythmmakertools.Talea(
        ...         counts=(1, 2),
        ...         denominator=4,
        ...         ),
        ...     playing_groupings=(2,),
        ...     rotation_indices=(1,),
        ...     )

    ::

        >>> timespan_inventory = timespan_maker(
        ...     music_specifiers=music_specifiers,
        ...     target_timespan=target_timespan,
        ...     )
        >>> print(format(timespan_inventory))
        timespantools.TimespanInventory(
            [
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(0, 1),
                    stop_offset=durationtools.Offset(1, 4),
                    voice_name='Viola 1 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(0, 1),
                    stop_offset=durationtools.Offset(1, 2),
                    voice_name='Viola 1 Fingering Voice',
                    ),
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(1, 4),
                    stop_offset=durationtools.Offset(1, 2),
                    voice_name='Viola 2 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(1, 4),
                    stop_offset=durationtools.Offset(3, 4),
                    voice_name='Viola 1 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(1, 4),
                    stop_offset=durationtools.Offset(3, 4),
                    voice_name='Viola 2 Fingering Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(1, 2),
                    stop_offset=durationtools.Offset(3, 4),
                    voice_name='Viola 1 Fingering Voice',
                    ),
                consort.tools.PerformedTimespan(
                    can_split=False,
                    start_offset=durationtools.Offset(1, 2),
                    stop_offset=durationtools.Offset(1, 1),
                    voice_name='Viola 2 Bowing Voice',
                    ),
                consort.tools.PerformedTimespan(
                    start_offset=durationtools.Offset(3, 4),
                    stop_offset=durationtools.Offset(1, 1),
                    voice_name='Viola 2 Fingering Voice',
                    ),
                ]
            )

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_rotation_indices',
        '_voice_names',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        can_split=False,
        fuse_groups=None,
        initial_silence_talea=None,
        minimum_duration=None,
        padding=None,
        playing_talea=rhythmmakertools.Talea(
            counts=[4],
            denominator=16,
            ),
        playing_groupings=(1,),
        reflect=None,
        repeat=True,
        rotation_indices=None,
        seed=None,
        silence_talea=rhythmmakertools.Talea(
            counts=[4],
            denominator=16,
            ),
        step_anchor=Right,
        synchronize_groupings=False,
        synchronize_step=False,
        ):
        consort.TaleaTimespanMaker.__init__(
            self,
            can_split=can_split,
            fuse_groups=fuse_groups,
            initial_silence_talea=initial_silence_talea,
            minimum_duration=minimum_duration,
            padding=padding,
            playing_talea=playing_talea,
            playing_groupings=playing_groupings,
            reflect=reflect,
            repeat=repeat,
            seed=seed,
            silence_talea=silence_talea,
            step_anchor=step_anchor,
            synchronize_groupings=synchronize_groupings,
            synchronize_step=synchronize_step,
            )
        if rotation_indices is not None:
            if not isinstance(rotation_indices, collections.Sequence):
                rotation_indices = int(rotation_indices)
                rotation_indices = (rotation_indices,)
            rotation_indices = tuple(rotation_indices)
        self._rotation_indices = rotation_indices

    ### SPECIAL METHODS ###

    def __call__(
        self,
        color=None,
        layer=None,
        music_specifiers=None,
        target_timespan=None,
        timespan_inventory=None,
        ):
        assert ('Viola 1 Bowing Voice' in music_specifiers and
            'Viola 1 Fingering Voice' in music_specifiers) or \
            ('Viola 2 Bowing Voice' in music_specifiers and
            'Viola 2 Fingering Voice' in music_specifiers)
        bowing_specifiers = collections.OrderedDict()
        viola_1_fingering_specifiers = collections.OrderedDict()
        viola_2_fingering_specifiers = collections.OrderedDict()
        for voice_name, music_specifier_tuple in music_specifiers.items():
            if 'Bowing' in voice_name:
                bowing_specifiers[voice_name] = music_specifier_tuple
            elif 'Viola 1 Fingering' in voice_name:
                viola_1_fingering_specifiers[voice_name] = music_specifier_tuple
            elif 'Viola 2 Fingering' in voice_name:
                viola_2_fingering_specifiers[voice_name] = music_specifier_tuple
            else:
                raise ValueError
        result = consort.TimespanMaker.__call__(
            self,
            color=color,
            layer=layer,
            music_specifiers=bowing_specifiers,
            target_timespan=target_timespan,
            )
        if viola_1_fingering_specifiers:
            result = self._viola_1_fingering_timespan_maker(
                color=color,
                layer=layer,
                music_specifiers=viola_1_fingering_specifiers,
                target_timespan=target_timespan,
                timespan_inventory=result,
                )
        if viola_2_fingering_specifiers:
            result = self._viola_2_fingering_timespan_maker(
                color=color,
                layer=layer,
                music_specifiers=viola_2_fingering_specifiers,
                target_timespan=target_timespan,
                timespan_inventory=result,
                )
        if timespan_inventory is None:
            timespan_inventory = timespantools.TimespanInventory()
        timespan_inventory.extend(result)
        timespan_inventory.sort()
        return timespan_inventory

    ### PRIVATE PROPERTIES ###

    @property
    def _viola_1_fingering_timespan_maker(self):
        timespan_maker = consort.DependentTimespanMaker(
            can_split=True,
            include_inner_starts=True,
            include_inner_stops=False,
            minimum_duration=None,
            rotation_indices=self.rotation_indices,
            voice_names=('Viola 1 Bowing Voice',),
            )
        return timespan_maker

    @property
    def _viola_2_fingering_timespan_maker(self):
        timespan_maker = consort.DependentTimespanMaker(
            can_split=True,
            include_inner_starts=True,
            include_inner_stops=False,
            minimum_duration=None,
            rotation_indices=self.rotation_indices,
            voice_names=('Viola 2 Bowing Voice',),
            )
        return timespan_maker

    ### PUBLIC PROPERTIES ###

    @property
    def rotation_indices(self):
        return self._rotation_indices