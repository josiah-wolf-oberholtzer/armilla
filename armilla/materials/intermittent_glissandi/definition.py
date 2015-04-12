# -*- encoding: utf-8 -*-
import consort
from abjad.tools import selectortools
from abjad.tools import spannertools


intermittent_glissandi = consort.AttachmentExpression(
    attachments=spannertools.Glissando(
        allow_repeated_pitches=False,
        allow_ties=False,
        parenthesize_repeated_pitches=True,
        ),
    selector=selectortools.Selector()\
        .by_leaves()\
        [:-1]\
        .append_callback(consort.AfterGraceSelectorCallback())\
        .by_counts(
            [-3, 4, -2, 3, -1, 4],
            cyclic=True,
            overhang=True,
            fuse_overhang=True,
            rotate=True,
            ),
    )