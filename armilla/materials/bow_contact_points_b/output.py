# -*- encoding: utf-8 -*-
from abjad.tools import datastructuretools
from abjad.tools import durationtools
from abjad.tools import indicatortools


bow_contact_points_b = datastructuretools.TypedList(
    [
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(0, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(2, 5),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 5),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(2, 5),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 5),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(3, 5),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(0, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 5),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(0, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 5),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(0, 1),
            ),
        ]
    )