# -*- encoding: utf-8 -*-
from abjad import *


instrumentation = instrumenttools.InstrumentationSpecifier(
    performers=instrumenttools.PerformerInventory(
        [
            instrumenttools.Performer(
                name='Viola One',
                instruments=instrumenttools.InstrumentInventory(
                    [
                        instrumenttools.Viola(
                            instrument_name='viola',
                            short_instrument_name='va.',
                            instrument_name_markup=markuptools.Markup(
                                contents=('Viola',),
                                ),
                            short_instrument_name_markup=markuptools.Markup(
                                contents=('Va.',),
                                ),
                            allowable_clefs=indicatortools.ClefInventory(
                                [
                                    indicatortools.Clef(
                                        name='alto',
                                        ),
                                    indicatortools.Clef(
                                        name='treble',
                                        ),
                                    ]
                                ),
                            default_tuning=indicatortools.Tuning(
                                pitches=pitchtools.PitchSegment(
                                    (
                                        pitchtools.NamedPitch('c'),
                                        pitchtools.NamedPitch('g'),
                                        pitchtools.NamedPitch("d'"),
                                        pitchtools.NamedPitch("a'"),
                                        ),
                                    item_class=pitchtools.NamedPitch,
                                    ),
                                ),
                            pitch_range=pitchtools.PitchRange(
                                '[C3, D6]'
                                ),
                            sounding_pitch_of_written_middle_c=pitchtools.NamedPitch("c'"),
                            ),
                        ]
                    ),
                ),
            instrumenttools.Performer(
                name='Viola Two',
                instruments=instrumenttools.InstrumentInventory(
                    [
                        instrumenttools.Viola(
                            instrument_name='viola',
                            short_instrument_name='va.',
                            instrument_name_markup=markuptools.Markup(
                                contents=('Viola',),
                                ),
                            short_instrument_name_markup=markuptools.Markup(
                                contents=('Va.',),
                                ),
                            allowable_clefs=indicatortools.ClefInventory(
                                [
                                    indicatortools.Clef(
                                        name='alto',
                                        ),
                                    indicatortools.Clef(
                                        name='treble',
                                        ),
                                    ]
                                ),
                            default_tuning=indicatortools.Tuning(
                                pitches=pitchtools.PitchSegment(
                                    (
                                        pitchtools.NamedPitch('c'),
                                        pitchtools.NamedPitch('g'),
                                        pitchtools.NamedPitch("d'"),
                                        pitchtools.NamedPitch("a'"),
                                        ),
                                    item_class=pitchtools.NamedPitch,
                                    ),
                                ),
                            pitch_range=pitchtools.PitchRange(
                                '[C3, D6]'
                                ),
                            sounding_pitch_of_written_middle_c=pitchtools.NamedPitch("c'"),
                            ),
                        ]
                    ),
                ),
            ]
        ),
    )
