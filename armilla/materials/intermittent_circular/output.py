# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import indicatortools
from abjad.tools import scoretools
from abjad.tools import selectortools
import consort


intermittent_circular = consort.tools.AttachmentExpression(
    attachments=datastructuretools.TypedList(
        [
            indicatortools.BowMotionTechnique(
                technique_name='circular',
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
            selectortools.CountsSelectorCallback(
                counts=datastructuretools.CyclicTuple(
                    [-3, 1, -4, 2, -1, 3, -5, 2]
                    ),
                cyclic=False,
                fuse_overhang=False,
                nonempty=False,
                overhang=False,
                rotate=False,
                ),
            selectortools.FlattenSelectorCallback(
                depth=-1,
                ),
            ),
        ),
    )