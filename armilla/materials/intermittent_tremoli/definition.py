# -*- encoding: utf-8 -*-
import consort
from abjad.tools import selectortools
from abjad.tools import spannertools


intermittent_tremoli = consort.AttachmentExpression(
    attachments=spannertools.StemTremoloSpanner(),
    selector=selectortools.Selector().by_leaves()[:-1].by_counts(
        [-7, 2, -3, 1],
        ),
    )