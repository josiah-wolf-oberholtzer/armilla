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
                            \afterGrace
                            a4.
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    c'
                                    \tweak style #'harmonic
                                    e'
                                >16
                                <
                                    c'
                                    \tweak style #'harmonic
                                    g'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        % [Violin 1 Voice] Measure 2
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
                        % [Violin 1 Voice] Measure 3
                        {
                            a8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 4
                        {
                            g4 \glissando
                            aqf8 [
                            \set stemLeftBeamCount = 1
                            \afterGrace
                            \parenthesize
                            aqf8 \repeatTie ]
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    g
                                    \tweak style #'harmonic
                                    d'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        {
                            g8
                            \parenthesize
                            g4 \repeatTie \glissando
                        }
                        % [Violin 1 Voice] Measure 5
                        {
                            c'4
                        }
                    }
                    {
                        {
                            r8
                        }
                        % [Violin 1 Voice] Measure 6
                        {
                            r4
                        }
                    }
                    {
                        {
                            a8 \glissando
                        }
                        % [Violin 1 Voice] Measure 7
                        {
                            c'4
                        }
                    }
                    {
                        {
                            r8
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
                            a8 \glissando
                        }
                        % [Violin 2 Voice] Measure 2
                        {
                            \afterGrace
                            c'4
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    a
                                    \tweak style #'harmonic
                                    e'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        {
                            a8 \glissando
                        }
                        % [Violin 2 Voice] Measure 3
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
                        % [Violin 2 Voice] Measure 4
                        {
                            gqs4
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
                            c'8 \glissando
                        }
                        {
                            \afterGrace
                            af4
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    c'
                                    \tweak style #'harmonic
                                    e'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        % [Violin 2 Voice] Measure 5
                        {
                            c'4 \glissando
                        }
                        {
                            \afterGrace
                            a8
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    c'
                                    \tweak style #'harmonic
                                    f'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        % [Violin 2 Voice] Measure 6
                        {
                            c'4. \glissando
                        }
                        % [Violin 2 Voice] Measure 7
                        {
                            aqs8
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
                            a4 \glissando
                        }
                        % [Viola Voice] Measure 2
                        {
                            c'8 \glissando
                        }
                        {
                            \afterGrace
                            a8
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    c'
                                    \tweak style #'harmonic
                                    f'
                                >16
                                <
                                    c'
                                    \tweak style #'harmonic
                                    e'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        {
                            c'8 \glissando
                        }
                        % [Viola Voice] Measure 3
                        {
                            aqs8
                        }
                    }
                    {
                        {
                            r4
                        }
                        % [Viola Voice] Measure 4
                        {
                            r4
                        }
                    }
                    {
                        {
                            d'8
                            \parenthesize
                            d'4 \repeatTie \glissando
                        }
                        {
                            \afterGrace
                            a4
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    af
                                    \tweak style #'harmonic
                                    c'
                                >16
                                <
                                    af
                                    \tweak style #'harmonic
                                    ef'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        % [Viola Voice] Measure 5
                        {
                            af!8 \glissando
                        }
                        {
                            \afterGrace
                            a4
                            {
                                \override Flag.stroke-style = #"grace"
                                \override Script.font-size = #0.5
                                <
                                    c'
                                    \tweak style #'harmonic
                                    f'
                                >16
                                <
                                    c'
                                    \tweak style #'harmonic
                                    e'
                                >16
                                \revert Flag.stroke-style
                                \revert Script.font-size
                            }
                        }
                        % [Viola Voice] Measure 6
                        {
                            c'4
                        }
                    }
                    {
                        {
                            r8
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
                            c'4. \glissando
                        }
                        % [Cello Voice] Measure 2
                        {
                            a4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        % [Cello Voice] Measure 3
                        {
                            c'4. \glissando
                        }
                        % [Cello Voice] Measure 4
                        {
                            af8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            aqs4 \glissando
                        }
                        {
                            a4 \glissando
                        }
                        % [Cello Voice] Measure 5
                        {
                            d'8 \glissando
                        }
                        {
                            c'4
                        }
                    }
                    {
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
                            a8
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
    >>
}