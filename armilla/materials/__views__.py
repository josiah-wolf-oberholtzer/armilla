# -*- encoding: utf-8 -*-
from abjad import *
from ide import idetools


view_inventory=idetools.ViewInventory(
    [
        (
            'music specifiers',
            idetools.View(
                ["'music specifier' in :ds:"]
                ),
            ),
        (
            'timespan makers',
            idetools.View(
                ["'timespan maker' in :ds:"]
                ),
            ),
        ]
    )