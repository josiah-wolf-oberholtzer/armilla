# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import markuptools
from abjad.tools import pitchtools
from abjad.tools import schemetools
from abjad.tools import scoretools
from abjad.tools import selectortools
import consort


intermittent_trills = consort.tools.AttachmentExpression(
    attachments=datastructuretools.TypedList(
        [
            consort.tools.ConsortTrillSpanner(
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
            consort.tools.ConsortTrillSpanner(
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
            consort.tools.ConsortTrillSpanner(
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
            consort.tools.ConsortTrillSpanner(
                interval=pitchtools.NamedInterval('+m3'),
                ),
            consort.tools.ConsortTrillSpanner(
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
                    [-3, 2, -2, 1, -1, 2, -1, 1]
                    ),
                cyclic=True,
                fuse_overhang=False,
                nonempty=False,
                overhang=False,
                rotate=True,
                ),
            ),
        ),
    )