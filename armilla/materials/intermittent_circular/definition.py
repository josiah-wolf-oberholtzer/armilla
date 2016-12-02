# -*- encoding: utf-8 -*-
import consort
from abjad.tools import indicatortools
from abjad.tools import selectortools


intermittent_circular = consort.AttachmentExpression(
    attachments=indicatortools.BowMotionTechnique('circular'),
    selector=selectortools.Selector().by_leaf()[:-1].by_counts(
        [-3, 1, -4, 2, -1, 3, -5, 2],
        ).flatten(),
    )