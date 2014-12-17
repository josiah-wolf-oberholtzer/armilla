# -*- encoding: utf-8 -*-
from abjad import attach
from abjad import abctools
from abjad import datastructuretools
from abjad import durationtools
from abjad import indicatortools
from abjad import lilypondnametools
from abjad import schemetools
from abjad import spannertools


class DynamicPhrasing(abctools.AbjadValueObject):
    r"""A dynamic phrasing expression.

    ::

        >>> import armilla
        >>> dynamic_phrasing = armilla.DynamicPhrasing(
        ...     dynamic_tokens='f p pp pp',
        ...     transitions=('flared', None),
        ...     )
        >>> print(format(dynamic_phrasing))
        armilla.makers.DynamicPhrasing(
            dynamic_tokens=datastructuretools.CyclicTuple(
                ['f', 'p', 'pp', 'pp']
                ),
            transitions=datastructuretools.CyclicTuple(
                ['flared', None]
                ),
            )

    ..  container:: example

        ::

            >>> music = Staff(r'''
            ...     { c'4 d'4 e'4 f'4 }
            ...     { g'4 a'4 b'4 }
            ...     { c''4 }
            ... ''')
            >>> print(format(music))
            \new Staff {
                {
                    c'4
                    d'4
                    e'4
                    f'4
                }
                {
                    g'4
                    a'4
                    b'4
                }
                {
                    c''4
                }
            }

        ::

            >>> dynamic_phrasing(music)
            >>> print(format(music))
            \new Staff {
                {
                    \once \override Hairpin.stencil = #flared-hairpin
                    c'4 \f \>
                    d'4
                    e'4
                    f'4
                }
                {
                    g'4 \p \>
                    a'4
                    b'4
                }
                {
                    c''4 \pp
                }
            }

    ..  container:: example

        ::

            >>> music = Staff(r'''
            ...     { c'4 d'4 e'4 f'4 }
            ...     { g'4 a'4 b'4 }
            ...     { c''4 c'4 }
            ... ''')

        ::

            >>> dynamic_phrasing(music, seed=2)
            >>> print(format(music))
            \new Staff {
                {
                    c'4 \pp
                    d'4
                    e'4
                    f'4
                }
                {
                    g'4 \<
                    a'4
                    b'4
                }
                {
                    \once \override Hairpin.stencil = #flared-hairpin
                    c''4 \f \>
                    c'4 \p
                }
            }

    ..  container:: example

        ::

            >>> music = Staff("{ c'4 }")
            >>> dynamic_phrasing(music, seed=1)
            >>> print(format(music))
            \new Staff {
                {
                    c'4 \p
                }
            }

    ..  container:: example

        ::

            >>> music = Staff("{ c'4 d'4 }")
            >>> dynamic_phrasing(music, seed=1)
            >>> print(format(music))
            \new Staff {
                {
                    c'4 \p \>
                    d'4 \pp
                }
            }

    """

    ### CLASS VARIABLES ###

    __slots__ = (
        '_dynamic_tokens',
        '_transitions',
        )

    _transition_types = (
        'constante',
        'flared',
        'simple',
        None,
        )

    ### INITIALIZER ###

    def __init__(
        self,
        dynamic_tokens=('f', 'p'),
        transitions=None,
        ):
        if isinstance(dynamic_tokens, str):
            dynamic_tokens = dynamic_tokens.split()
        assert all(_ in indicatortools.Dynamic._dynamic_name_to_dynamic_ordinal
            for _ in dynamic_tokens)
        assert len(dynamic_tokens)
        dynamic_tokens = datastructuretools.CyclicTuple(dynamic_tokens)
        self._dynamic_tokens = dynamic_tokens
        if isinstance(transitions, (str, type(None))):
            transitions = [transitions]
        assert all(_ in self._transition_types for _ in transitions)
        transitions = datastructuretools.CyclicTuple(transitions)
        self._transitions = transitions

    ### SPECIAL METHODS ###

    def __call__(self, music, seed=0):
        previous_dynamic = None
        if 1 < len(music):
            for i, division in enumerate(music[:-1]):
                dynamic, hairpin, grob_override = \
                    self._get_attachments(seed + i)
                leaves = list(division.select_leaves())
                leaves.append(music[i + 1].select_leaves()[0])
                if dynamic != previous_dynamic:
                    attach(dynamic, leaves[0])
                if grob_override is not None:
                    attach(grob_override, leaves[0])
                if hairpin is not None:
                    attach(hairpin, leaves)
                previous_dynamic = dynamic
            seed = seed + i + 1
        leaves = music[-1].select_leaves()
        if 1 < len(leaves):
            dynamic, hairpin, grob_override = self._get_attachments(seed)
            if leaves.get_duration() <= durationtools.Duration(1, 8):
                if previous_dynamic != dynamic:
                    if 1 < len(music):
                        attach(dynamic, leaves[-1])
                    else:
                        attach(dynamic, leaves[0])
            else:
                if previous_dynamic != dynamic:
                    attach(dynamic, leaves[0])
                if grob_override is not None:
                    attach(grob_override, leaves[0])
                if hairpin is not None:
                    attach(hairpin, leaves)
                next_dynamic, _, _ = self._get_attachments(seed + 1)
                if next_dynamic != dynamic:
                    attach(next_dynamic, leaves[-1])
        else:
            dynamic, _, _ = self._get_attachments(seed)
            if dynamic != previous_dynamic:
                attach(dynamic, leaves[0])

    ### PRIVATE METHODS ###

    def _get_attachments(self, i):
        this_dynamic = indicatortools.Dynamic(self.dynamic_tokens[i])
        next_dynamic = indicatortools.Dynamic(self.dynamic_tokens[i + 1])
        if this_dynamic.ordinal < next_dynamic.ordinal:
            hairpin = spannertools.Crescendo()
        elif next_dynamic.ordinal < this_dynamic.ordinal:
            hairpin = spannertools.Decrescendo()
        else:
            hairpin = None
        transition = self.transitions[i]
        grob_override = None
        if hairpin is not None and transition in ('flared', 'constante'):
            grob_override = lilypondnametools.LilyPondGrobOverride(
                grob_name='Hairpin',
                is_once=True,
                property_path='stencil',
                value=schemetools.Scheme('{}-hairpin'.format(transition)),
                )

        return this_dynamic, hairpin, grob_override

    ### PUBLIC PROPERTIES ###

    @property
    def dynamic_tokens(self):
        return self._dynamic_tokens

    @property
    def transitions(self):
        return self._transitions