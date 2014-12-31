# -*- encoding: utf-8 -*-
import consort
from abjad.tools import indicatortools
from abjad.tools import selectortools


intermittent_accents = consort.AttachmentExpression(
    attachments=indicatortools.Articulation('>', 'down'),
    selector=selectortools.Selector().by_leaves()[:-1].by_counts(
        [-3, 1, -2, 2, -1, 3, -4, 5],
        ).flatten(),
    )