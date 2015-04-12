# -*- encoding: utf-8 -*-
import consort
from abjad.tools import markuptools
from abjad.tools import schemetools
from abjad.tools import selectortools
from abjad.tools import spannertools


harmonic_fourth_trill = consort.ConsortTrillSpanner(
    interval='+P4',
    overrides={
        'trill_pitch_head__stencil': schemetools.Scheme(
            'ly:text-interface::print',
            ),
        'trill_pitch_head__text': markuptools.Markup.musicglyph(
            'noteheads.s0harmonic',
            direction=None,
            ),
        },
    )

harmonic_third_trill = consort.ConsortTrillSpanner(
    interval='+m3',
    overrides={
        'trill_pitch_head__stencil': schemetools.Scheme(
            'ly:text-interface::print',
            ),
        'trill_pitch_head__text': markuptools.Markup.musicglyph(
            'noteheads.s0harmonic',
            direction=None,
            ),
        },
    )

stopped_third_trill = consort.ConsortTrillSpanner(
    interval='+m3',
    )

intermittent_trills = consort.AttachmentExpression(
    attachments=(
        harmonic_fourth_trill,
        harmonic_third_trill,
        harmonic_fourth_trill,
        stopped_third_trill,
        stopped_third_trill,
        ),
    selector=selectortools.Selector()\
        .by_leaves()\
        [:-1]\
        .append_callback(consort.AfterGraceSelectorCallback())\
        .by_counts(
            [-3, 2, -2, 1, -1, 2, -1, 1],
            cyclic=True,
            overhang=False,
            fuse_overhang=False,
            rotate=True,
            ),
    )