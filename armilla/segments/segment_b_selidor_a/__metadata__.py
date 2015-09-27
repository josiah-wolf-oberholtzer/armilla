# -*- coding: utf-8 -*-
from abjad import *


metadata = datastructuretools.TypedOrderedDict(
    [
        (
            'end_instruments_by_staff',
            datastructuretools.TypedOrderedDict(
                [
                    ('Viola 1 Bowing Staff', 'viola 1'),
                    ('Viola 1 Fingering Staff', 'viola 1'),
                    ('Viola 2 Bowing Staff', 'viola 2'),
                    ('Viola 2 Fingering Staff', 'viola 2'),
                    ]
                ),
            ),
        (
            'end_tempo',
            (
                (1, 4),
                72,
                ),
            ),
        (
            'end_time_signature',
            (3, 8),
            ),
        ('first_bar_number', 11),
        ('is_repeated', True),
        ('measure_count', 6),
        ('segment_count', 8),
        ('segment_number', 2),
        ]
    )