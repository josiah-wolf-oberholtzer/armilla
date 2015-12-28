\version "2.19.32"
\language "english"

\include "/Users/joberholtzer/Development/consort/consort/stylesheets/stylesheet.ily"

\header {
    tagline = \markup {}
    title = #"Left Hand Stasis Music Specifier"
}

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
                            \pitchedTrill
                            af'4. \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        % [Violin 1 Voice] Measure 2
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                        }
                        % [Violin 1 Voice] Measure 3
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
                        % [Violin 1 Voice] Measure 4
                        {
                            \pitchedTrill
                            aqf'2 \startTrillSpan cqf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            af'4. \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        % [Violin 1 Voice] Measure 5
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            aqf'8 \startTrillSpan dqf''
                            <> \stopTrillSpan
                        }
                        % [Violin 1 Voice] Measure 7
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan df''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            af'8 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        % [Violin 2 Voice] Measure 2
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            aqf'8 \startTrillSpan cqf''
                            <> \stopTrillSpan
                        }
                        % [Violin 2 Voice] Measure 3
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            aqf'8 \startTrillSpan dqf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan df''
                            <> \stopTrillSpan
                        }
                        % [Violin 2 Voice] Measure 5
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan df''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            aqf'8 \startTrillSpan dqf''
                            <> \stopTrillSpan
                        }
                        % [Violin 2 Voice] Measure 6
                        {
                            \pitchedTrill
                            af'4. \startTrillSpan df''
                            <> \stopTrillSpan
                        }
                        % [Violin 2 Voice] Measure 7
                        {
                            \pitchedTrill
                            af'8 \startTrillSpan df''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        % [Viola Voice] Measure 2
                        {
                            \pitchedTrill
                            af'8 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            aqf'8 \startTrillSpan cqf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            af'8 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        % [Viola Voice] Measure 3
                        {
                            \pitchedTrill
                            af'8 \startTrillSpan cf''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            aqf'4. \startTrillSpan cqf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        % [Viola Voice] Measure 5
                        {
                            \pitchedTrill
                            af'8 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            aqf'4 \startTrillSpan cqf''
                            <> \stopTrillSpan
                        }
                        % [Viola Voice] Measure 6
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            af'4. \startTrillSpan df''
                            <> \stopTrillSpan
                        }
                        % [Cello Voice] Measure 2
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan df''
                            <> \stopTrillSpan
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
                            \pitchedTrill
                            aqf'4. \startTrillSpan cqf''
                            <> \stopTrillSpan
                        }
                        % [Cello Voice] Measure 4
                        {
                            \pitchedTrill
                            af'8 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            aqf'4 \startTrillSpan cqf''
                            <> \stopTrillSpan
                        }
                        % [Cello Voice] Measure 5
                        {
                            \pitchedTrill
                            af'8 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                        {
                            \pitchedTrill
                            af'4 \startTrillSpan cf''
                            <> \stopTrillSpan
                        }
                    }
                    {
                        % [Cello Voice] Measure 6
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/4
                        }
                    }
                }
            }
        >>
    >>
}