# -*- encoding: utf-8 -*-
from abjad.tools import durationtools
from consort import TimespanMaker


class ArmillaTimespanMaker(TimespanMaker):
    r'''Armilla timespan maker.

    ::

        >>> import armilla
        >>> timespan_maker = armilla.makers.ArmillaTimespanMaker(
        ...     viola_1_bowing_specifiers='fee',
        ...     viola_1_fingering_specifiers='fi',
        ...     viola_2_bowing_specifiers='fo',
        ...     viola_2_fingering_specifiers='fum',
        ...     )
        >>> print(format(timespan_maker))
        armilla.makers.ArmillaTimespanMaker(
            viola_1_bowing_specifiers='fee',
            viola_1_fingering_specifiers='fi',
            viola_2_bowing_specifiers='fo',
            viola_2_fingering_specifiers='fum',
            )

    '''

    ### CLASS VARIABLES ###

    __slots__ = (
        '_viola_1_bowing_specifiers',
        '_viola_1_fingering_specifiers',
        '_viola_2_bowing_specifiers',
        '_viola_2_fingering_specifiers',
        )

    ### INITIALIZER ###

    def __init__(
        self,
        viola_1_bowing_specifiers=None,
        viola_1_fingering_specifiers=None,
        viola_2_bowing_specifiers=None,
        viola_2_fingering_specifiers=None,
        seed=None,
        ):
        TimespanMaker.__init__(
            self,
            minimum_duration=durationtools.Duration(1, 8),
            seed=seed,
            )
        assert (viola_1_bowing_specifiers and viola_1_fingering_specifiers) \
            or (viola_2_bowing_specifiers and viola_2_fingering_specifiers)
        self._viola_1_bowing_specifiers = viola_1_bowing_specifiers
        self._viola_1_fingering_specifiers = viola_1_fingering_specifiers
        self._viola_2_bowing_specifiers = viola_2_bowing_specifiers
        self._viola_2_fingering_specifiers = viola_2_fingering_specifiers

    ### PUBLIC PROPERTIES ###

    @property
    def viola_1_bowing_specifiers(self):
        return self._viola_1_bowing_specifiers

    @property
    def viola_1_fingering_specifiers(self):
        return self._viola_1_fingering_specifiers

    @property
    def viola_2_bowing_specifiers(self):
        return self._viola_2_bowing_specifiers

    @property
    def viola_2_fingering_specifiers(self):
        return self._viola_2_fingering_specifiers