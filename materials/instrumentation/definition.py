# -*- encoding: utf-8 -*-
from abjad import *
output_module_import_statements = [
    'from abjad import *',
    ]

violist_one = instrumenttools.Performer('Viola One')
violist_one.instruments.append(instrumenttools.Viola())

violist_two = instrumenttools.Performer('Viola Two')
violist_two.instruments.append(instrumenttools.Viola())

instrumentation = instrumenttools.InstrumentationSpecifier([
    violist_one,
    violist_two,
    ])
