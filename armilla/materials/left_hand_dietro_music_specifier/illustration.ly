\version "2.19.32"
\language "english"

\include "/Users/joberholtzer/Development/consort/consort/stylesheets/stylesheet.ily"

\header {
    tagline = \markup {}
    title = #"Left Hand Dietro Music Specifier"
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
                            \clef "percussion"
                            \override NoteHead #'style = #'cross
                            <g b>4.
                        }
                        % [Violin 1 Voice] Measure 2
                        {
                            <b d'>4
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <d' f'>8
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <g b>4.
                            <g b>8 \repeatTie
                        }
                        {
                            <b d'>8
                            <b d'>4 \repeatTie
                        }
                        % [Violin 1 Voice] Measure 5
                        {
                            <d' f'>4
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <g b>8
                        }
                        % [Violin 1 Voice] Measure 7
                        {
                            <b d'>4
                            \revert NoteHead #'style
                            \clef "treble"
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
                            \clef "percussion"
                            \override NoteHead #'style = #'cross
                            <g b>8
                        }
                        % [Violin 2 Voice] Measure 2
                        {
                            <b d'>4
                        }
                        {
                            <d' f'>8
                        }
                        % [Violin 2 Voice] Measure 3
                        {
                            <g b>4
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <b d'>4
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <d' f'>8
                        }
                        {
                            <g b>4
                        }
                        % [Violin 2 Voice] Measure 5
                        {
                            <b d'>4
                        }
                        {
                            <d' f'>8
                        }
                        % [Violin 2 Voice] Measure 6
                        {
                            <g b>4.
                        }
                        % [Violin 2 Voice] Measure 7
                        {
                            <b d'>8
                            \revert NoteHead #'style
                            \clef "treble"
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
                            \clef "percussion"
                            \override NoteHead #'style = #'cross
                            <g b>4
                        }
                        % [Viola Voice] Measure 2
                        {
                            <b d'>8
                        }
                        {
                            <d' f'>8
                        }
                        {
                            <g b>8
                        }
                        % [Viola Voice] Measure 3
                        {
                            <b d'>8
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <d' f'>8
                            <d' f'>4 \repeatTie
                        }
                        {
                            <g b>4
                        }
                        % [Viola Voice] Measure 5
                        {
                            <b d'>8
                        }
                        {
                            <d' f'>4
                        }
                        % [Viola Voice] Measure 6
                        {
                            <g b>4
                            \revert NoteHead #'style
                            \clef "alto"
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
                            \clef "percussion"
                            \override NoteHead #'style = #'cross
                            <g b>4.
                        }
                        % [Cello Voice] Measure 2
                        {
                            <b d'>4
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <d' f'>4.
                        }
                        % [Cello Voice] Measure 4
                        {
                            <g b>8
                            \revert NoteHead #'style
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \override NoteHead #'style = #'cross
                            <b d'>4
                        }
                        {
                            <d' f'>4
                        }
                        % [Cello Voice] Measure 5
                        {
                            <g b>8
                        }
                        {
                            <b d'>4
                            \revert NoteHead #'style
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
                            \override NoteHead #'style = #'cross
                            <d' f'>8
                            \revert NoteHead #'style
                            \clef "bass"
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