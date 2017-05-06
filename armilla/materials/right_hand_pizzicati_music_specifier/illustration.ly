\version "2.19.44"
\language "english"

\include "/Users/joberholtzer/Development/consort/consort/stylesheets/stylesheet.ily"

\score {
    \context Score = "String Quartet Score" <<
        \tag #'time
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=72
                \time 3/8
                s1 * 9/8
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 3/8
                s1 * 9/8
            }
        }
        \tag #'violin-1
        \context StringPerformerGroup = "Violin 1 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Violin 1"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Vln. 1"
                }
        } <<
            \context StringStaff = "Violin 1 Staff" {
                \context Voice = "Violin 1 Voice" {
                    \clef "treble"
                    {
                        % [Violin 1 Voice] Measure 1
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 2
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 3
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 4
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 5
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                        % [Violin 1 Voice] Measure 6
                        {
                            r4
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 7
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'violin-2
        \context StringPerformerGroup = "Violin 2 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Violin 2"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Vln. 2"
                }
        } <<
            \context StringStaff = "Violin 2 Staff" {
                \context Voice = "Violin 2 Voice" {
                    \clef "treble"
                    {
                        % [Violin 2 Voice] Measure 1
                        {
                            r4
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \mf [ ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        % [Violin 2 Voice] Measure 2
                        {
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 3
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 4
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 5
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 6
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 7
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'viola
        \context StringPerformerGroup = "Viola Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    Viola
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    Va.
                }
        } <<
            \context StringStaff = "Viola Staff" {
                \context Voice = "Viola Voice" {
                    \clef "alto"
                    {
                        % [Viola Voice] Measure 1
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Viola Voice] Measure 2
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        % [Viola Voice] Measure 3
                        {
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        % [Viola Voice] Measure 4
                        {
                            r4
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Viola Voice] Measure 5
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        {
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Viola Voice] Measure 6
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        % [Viola Voice] Measure 7
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/8
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'cello
        \context StringPerformerGroup = "Cello Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    Cello
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    Vc.
                }
        } <<
            \context StringStaff = "Cello Staff" {
                \context Voice = "Cello Voice" {
                    \clef "bass"
                    {
                        % [Cello Voice] Measure 1
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Cello Voice] Measure 2
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        % [Cello Voice] Measure 3
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        % [Cello Voice] Measure 4
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Cello Voice] Measure 5
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \parenthesizeDynamic \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r8.
                        }
                        % [Cello Voice] Measure 6
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        % [Cello Voice] Measure 7
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 \mf ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                        }
                    }
                    {
                        {
                            r16
                            r4
                            \bar "|."
                        }
                    }
                }
            }
        >>
    >>
}