# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import indicatortools
from abjad.tools import scoretools
from abjad.tools import selectortools
import consort


intermittent_accents = consort.tools.AttachmentExpression(
    attachments=datastructuretools.TypedList(
        [
            indicatortools.Articulation('>', Down),
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
                    [-3, 1, -2, 2, -1, 3, -4, 5]
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