# -*- encoding: utf-8 -*-
from abjad import *


bow_contact_points_c = datastructuretools.TypedList(
    [
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(0, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 4),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(3, 4),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(0, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(0, 1),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 2),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 4),
            ),
        indicatortools.BowContactPoint(
            contact_point=durationtools.Multiplier(1, 1),
            ),
        ]
    )