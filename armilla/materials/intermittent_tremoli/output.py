# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


intermittent_tremoli = consort.tools.AttachmentExpression(
    attachments=datastructuretools.TypedList(
        [
            spannertools.StemTremoloSpanner(),
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
            selectortools.CountsSelectorCallback(
                counts=datastructuretools.CyclicTuple(
                    [-7, 2, -3, 1]
                    ),
                cyclic=False,
                fuse_overhang=False,
                overhang=False,
                rotate=False,
                ),
            ),
        ),
    )