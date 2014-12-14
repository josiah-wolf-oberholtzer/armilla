\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "/Users/josiah/Documents/Scores/armilla/armilla/stylesheets/stylesheet.ily"

\score {
    \context Score = "Armilla Score" <<
        \tag #'time
        \context TimeSignatureContext = "TimeSignatureContext" {
            {
                \time 3/8
                \tempo 4=72
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    Test
                            " "
                            \fontsize
                                #-3
                                " "
                        }
                    }
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
            {
                \time 5/4
                s1 * 5/4
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
            {
                \time 4/4
                s1 * 1
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 5/4
                s1 * 5/4
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
        }
        \tag #'viola-1
        \context StringPerformerGroup = "Viola 1 Performer Group" \with {
            instrumentName = \markup { Viola 1 }
            shortInstrumentName = \markup { Va. 1 }
        } <<
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \context BowingPositionVoice = "Viola 1 Bowing Voice" {
                    \clef "percussion"
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'4 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'4 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'4 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'16 ^\downbow \glissando
                        }
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'4. ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'4 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                        }
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'16 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'4 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                        }
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'4 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r4
                            \bar "||"
                        }
                    }
                }
                \context BowingBeamingVoice = "Viola 1 Bowing Voice" {
                    \clef "percussion"
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                        }
                        {
                            c'8 [
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/5 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            c'8 ]
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                            r8
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            c'8 ]
                        }
                        {
                            c'4.
                        }
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                            c'4
                        }
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            c'16 ]
                        }
                        {
                            c'4
                        }
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/8 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'8 [
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            c'16 ]
                        }
                        {
                            c'4
                        }
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r4
                            \bar "||"
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 1 Fingering Staff" {
                \context Voice = "Viola 1 Fingering Voice" {
                    \clef "alto"
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 4/5 {
                            \afterGrace
                            c'16 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            \afterGrace
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                            r8
                        }
                    }
                    {
                        {
                            \afterGrace
                            c'8 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ]
                        }
                        {
                            \afterGrace
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4.
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8 ]
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        {
                            c'4.
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        {
                            \afterGrace
                            c'4.
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        {
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r4
                            \bar "||"
                        }
                    }
                }
            }
        >>
        \tag #'viola-2
        \context StringPerformerGroup = "Viola 2 Performer Group" \with {
            instrumentName = \markup { Viola 2 }
            shortInstrumentName = \markup { Va. 2 }
        } <<
            \context BowingStaff = "Viola 2 Bowing Staff" <<
                \context BowingPositionVoice = "Viola 2 Bowing Voice" {
                    \clef "percussion"
                    {
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'4. ^\downbow \glissando
                        }
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'8 ^\upbow \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'4 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 8/10 {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'16 \glissando
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'4 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'4 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'16 \glissando
                        }
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'16 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'4 ^\upbow \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/8 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        0
                                        1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        1
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        2
                                        5
                                }
                            c'16 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        1
                                        5
                                }
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        4
                                        5
                                }
                            c'8 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \vcenter
                                    \fraction
                                        3
                                        5
                                }
                            c'4.
                        }
                    }
                    {
                        {
                            R1 * 3/8
                            \bar "||"
                        }
                    }
                }
                \context BowingBeamingVoice = "Viola 2 Bowing Voice" {
                    \clef "percussion"
                    {
                        \times 2/3 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4.
                        }
                        \times 2/3 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            c'8 ]
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 4/5 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            c'8 ]
                        }
                        {
                            c'4
                        }
                        {
                            c'8 [
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            c'16 ]
                        }
                        {
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                        }
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            c'16 ]
                        }
                        {
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8
                        }
                        {
                            c'4.
                        }
                    }
                    {
                        {
                            R1 * 3/8
                            \bar "||"
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 2 Fingering Staff" {
                \context Voice = "Viola 2 Fingering Voice" {
                    \clef "alto"
                    {
                        \times 4/5 {
                            \afterGrace
                            c'16 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ]
                        }
                        {
                            c'4.
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            \afterGrace
                            c'8 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 8/10 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ]
                        }
                        {
                            c'4
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ]
                        }
                        {
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/8 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \afterGrace
                            c'8 [
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8 ]
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        {
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'16
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            \afterGrace
                            c'8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                \override Stem #'length = #8
                                c'16
                                c'16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                                \revert Stem #'length
                            }
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            R1 * 3/8
                            \bar "||"
                        }
                    }
                }
            }
        >>
    >>
}