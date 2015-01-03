# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import markuptools
from abjad.tools import pitchtools
from abjad.tools import schemetools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


intermittent_trills = consort.tools.AttachmentExpression(
    attachments=datastructuretools.TypedList(
        [
            spannertools.ComplexTrillSpanner(
                overrides={
                    'trill_pitch_head__stencil': schemetools.Scheme(
                        'ly:text-interface::print'
                        ),
                    'trill_pitch_head__text': markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'musicglyph',
                                schemetools.Scheme(
                                    'noteheads.s0harmonic',
                                    force_quotes=True,
                                    )
                                ),
                            ),
                        ),
                    },
                interval=pitchtools.NamedInterval('+P4'),
                ),
            spannertools.ComplexTrillSpanner(
                overrides={
                    'trill_pitch_head__stencil': schemetools.Scheme(
                        'ly:text-interface::print'
                        ),
                    'trill_pitch_head__text': markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'musicglyph',
                                schemetools.Scheme(
                                    'noteheads.s0harmonic',
                                    force_quotes=True,
                                    )
                                ),
                            ),
                        ),
                    },
                interval=pitchtools.NamedInterval('+m3'),
                ),
            spannertools.ComplexTrillSpanner(
                overrides={
                    'trill_pitch_head__stencil': schemetools.Scheme(
                        'ly:text-interface::print'
                        ),
                    'trill_pitch_head__text': markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'musicglyph',
                                schemetools.Scheme(
                                    'noteheads.s0harmonic',
                                    force_quotes=True,
                                    )
                                ),
                            ),
                        ),
                    },
                interval=pitchtools.NamedInterval('+P4'),
                ),
            spannertools.ComplexTrillSpanner(
                interval=pitchtools.NamedInterval('+m3'),
                ),
            spannertools.ComplexTrillSpanner(
                interval=pitchtools.NamedInterval('+m3'),
                ),
            ]
        ),
    selector=selectortools.Selector(
        callbacks=(
            selectortools.PrototypeSelectorCallback(
                prototype=scoretools.Leaf,
                ),
            selectortools.SliceSelectorCallback(
                stop=-1,
                apply_to_each=True,
                ),
            consort.tools.AfterGraceSelectorCallback(),
            selectortools.CountsSelectorCallback(
                counts=datastructuretools.CyclicTuple(
                    [-3, 4, -2, 3, -1, 4]
                    ),
                cyclic=True,
                fuse_overhang=True,
                nonempty=False,
                overhang=True,
                rotate=True,
                ),
            ),
        ),
    )