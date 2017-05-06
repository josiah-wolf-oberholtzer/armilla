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
                            <a f'>4.
                        }
                        % [Violin 1 Voice] Measure 2
                        {
                            <c' f'>4
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
                            <a f'>8
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
                            <fs' d''>4.
                            <fs' d''>8 \repeatTie
                        }
                        {
                            <cqs' fqs'>8
                            <cqs' fqs'>4 \repeatTie
                        }
                        % [Violin 1 Voice] Measure 5
                        {
                            <a f'>4
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
                            <e' a'>8
                        }
                        % [Violin 1 Voice] Measure 7
                        {
                            <a d'>4
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
                            <a f'>8
                        }
                        % [Violin 2 Voice] Measure 2
                        {
                            <c' f'>4
                        }
                        {
                            <a f'>8
                        }
                        % [Violin 2 Voice] Measure 3
                        {
                            <c' af'>4
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
                            <aqs dqs'>4
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
                            <a f'>8
                        }
                        {
                            <c' f'>4
                        }
                        % [Violin 2 Voice] Measure 5
                        {
                            <f' bf'>4
                        }
                        {
                            <fs' e''>8
                        }
                        % [Violin 2 Voice] Measure 6
                        {
                            <a f'>4.
                        }
                        % [Violin 2 Voice] Measure 7
                        {
                            <cqs' aqf'>8
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
                            <c' af'>4
                        }
                        % [Viola Voice] Measure 2
                        {
                            <a d'>8
                        }
                        {
                            <g ef'>8
                        }
                        {
                            <c' af'>8
                        }
                        % [Viola Voice] Measure 3
                        {
                            <aqs dqs'>8
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
                            <gs e'>8
                            <gs e'>4 \repeatTie
                        }
                        {
                            <c' f'>4
                        }
                        % [Viola Voice] Measure 5
                        {
                            <e a>8
                        }
                        {
                            <a g'>4
                        }
                        % [Viola Voice] Measure 6
                        {
                            <fs d'>4
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
                            <c' af'>4.
                        }
                        % [Cello Voice] Measure 2
                        {
                            <a d'>4
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
                            <c' af'>4.
                        }
                        % [Cello Voice] Measure 4
                        {
                            <a f'>8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            <gqs cqs'>4
                        }
                        {
                            <c' af'>4
                        }
                        % [Cello Voice] Measure 5
                        {
                            <a d'>8
                        }
                        {
                            <fs b>4
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
                            <c' bf'>8
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