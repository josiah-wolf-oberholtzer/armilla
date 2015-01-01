# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import scoretools
from abjad.tools import selectortools
from abjad.tools import spannertools
import consort


intermittent_glissandi = consort.tools.AttachmentExpression(
    attachments=datastructuretools.TypedList(
        [
            spannertools.Glissando(
                allow_repeated_pitches=False,
                allow_ties=False,
                parenthesize_repeated_pitches=True,
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
                    [-3, 4, -2, 3, -1, 4]
                    ),
                cyclic=True,
                fuse_overhang=True,
                nonempty=False,
                overhang=True,
                rotate=True,
                ),
            ),
        ),
    )