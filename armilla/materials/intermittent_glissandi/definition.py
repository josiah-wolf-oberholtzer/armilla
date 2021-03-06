# -*- encoding: utf-8 -*-
import consort
from abjad.tools import selectortools


intermittent_glissandi = consort.AttachmentExpression(
    attachments=consort.Glissando(
        allow_repeat_pitches=False,
        allow_ties=False,
        parenthesize_repeated_pitches=True,
        ),
    selector=selectortools.Selector()
        .by_leaf()
        [:-1]
        .append_callback(consort.AfterGraceSelectorCallback())
        .by_counts(
            [-3, 4, -2, 3, -1, 4],
            cyclic=True,
            overhang=True,
            fuse_overhang=True,
            rotate=True,
            ),
    )
