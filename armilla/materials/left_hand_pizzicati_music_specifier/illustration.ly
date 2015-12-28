\version "2.19.32"
\language "english"

\include "/Users/joberholtzer/Development/consort/consort/stylesheets/stylesheet.ily"

\header {
    tagline = \markup {}
    title = #"Left Hand Pizzicati Music Specifier"
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
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <fs e' c'' gs''>16 \arpeggio
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
                            <f ef' b' g''>16 \arpeggio
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
                            <fs e' c'' gs''>16 \arpeggio
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
                            <c' bf' fs'' d'''>16 \arpeggio
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
                            <cs' b' g'' ef'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <f ef' b' g''>16 \arpeggio ]
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
                            <fs e' c'' gs''>16 \arpeggio
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
                            <d' c'' gs'' e'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <cs' b' g'' ef'''>16 \arpeggio ]
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
                            <cs' b' g'' ef'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <fs e' c'' gs''>16 \arpeggio ]
                        }
                        % [Violin 2 Voice] Measure 2
                        {
                            <f ef' b' g''>16 \arpeggio
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16 \arpeggio
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
                            <c' bf' fs'' d'''>16 \arpeggio
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
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <f ef' b' g''>16 \arpeggio
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16 \arpeggio
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
                            <d' c'' gs'' e'''>16 \arpeggio
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <fs e' c'' gs''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <f ef' b' g''>16 \arpeggio ]
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
                            <fs e' c'' gs''>16 \arpeggio
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
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <fs e' c'' gs''>16 \arpeggio
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16 \arpeggio
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <c' bf' fs'' d'''>16 \arpeggio ]
                        }
                        % [Viola Voice] Measure 3
                        {
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <f ef' b' g''>16 \arpeggio
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
                            <fs e' c'' gs''>16 \arpeggio
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
                            <d' c'' gs'' e'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <cs' b' g'' ef'''>16 \arpeggio ]
                        }
                        {
                            <fs e' c'' gs''>16 \arpeggio
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
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
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
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <fs e' c'' gs''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <f ef' b' g''>16 \arpeggio ]
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
                            <fs e' c'' gs''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <c' bf' fs'' d'''>16 \arpeggio ]
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
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <f ef' b' g''>16 \arpeggio
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16 \arpeggio
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
                            <d' c'' gs'' e'''>16 \arpeggio
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16 \arpeggio
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
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "bass"
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