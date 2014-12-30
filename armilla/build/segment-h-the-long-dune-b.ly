    \context Score = "Armilla Score" <<
        \tag #'time
        \context TimeSignatureContext = "TimeSignatureContext" {
            {
                \time 2/4
                \tempo 4=36
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    \caps
                                        H
                            " "
                            \fontsize
                                #-3
                                "The Long Dune (ii)"
                        }
                    }
                s1 * 1/2
            }
            {
                s1 * 1/2
            }
            {
                s1 * 1/2
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
                s1 * 1/2
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
                s1 * 1/2
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
                s1 * 1/2
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
                s1 * 1/2
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
        }
        \tag #'viola-1
        \context StringPerformerGroup = "Viola 1 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Viola 1"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Va. 1"
                }
        } <<
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 1 RH String Contact Voice" {
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
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
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                            c'16
                        }
                        {
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
                            s16
                            s8
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
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
                            s8
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
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
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s4
                            \bar "||"
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                            \bar "||"
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
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
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r4
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                            r4
                        }
                    }
                    {
                        {
                            c'16 [
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
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                            \bar "||"
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                            \bar "||"
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <c' bf' fs'' d'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <c' bf' fs'' d'''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <d' c'' gs'' e'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            <cs' b' g'' ef'''>16 \arpeggio
                        }
                        {
                            \set stemLeftBeamCount = 2
                            <fs e' c'' gs''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <c' bf' fs'' d'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r4
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <fs e' c'' gs''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <d' c'' gs'' e'''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <d' c'' gs'' e'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                            \bar "||"
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <c' bf' fs'' d'''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                            <c' bf' fs'' d'''>16
                        }
                    }
                    {
                        {
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            <d' c'' gs'' e'''>16
                            <cs' b' g'' ef'''>16
                        }
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <c' bf' fs'' d'''>16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                            <d' c'' gs'' e'''>16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            <d' c'' gs'' e'''>16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                            s4
                            \bar "||"
                        }
                    }
                }
            >>
        >>
        \tag #'viola-2
        \context StringPerformerGroup = "Viola 2 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Viola 2"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Va. 2"
                }
        } <<
            \context BowingStaff = "Viola 2 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 2 RH String Contact Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
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
                            s4
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                            c'16
                        }
                        {
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
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
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
                            s8
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                            c'16
                        }
                        {
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
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Pizz.
                                }
                        }
                    }
                    {
                        {
                            s8.
                            \bar "||"
                        }
                    }
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            \bar "||"
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                            r8
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                            r4
                        }
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
                        }
                        {
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                            \bar "||"
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16
                            c'16
                        }
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            \bar "||"
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <d' c'' gs'' e'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <fs e' c'' gs''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r4
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            <f ef' b' g''>16 \arpeggio
                        }
                        {
                            \set stemLeftBeamCount = 2
                            <fs e' c'' gs''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <c' bf' fs'' d'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <d' c'' gs'' e'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <d' c'' gs'' e'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            <cs' b' g'' ef'''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <c' bf' fs'' d'''>16 \arpeggio [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            <cs' b' g'' ef'''>16 \arpeggio
                        }
                        {
                            \set stemLeftBeamCount = 2
                            <f ef' b' g''>16 \arpeggio ]
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <c' bf' fs'' d'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <fs e' c'' gs''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <cs' b' g'' ef'''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "treble"
                            <f ef' b' g''>16 \arpeggio
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                            \bar "||"
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                    }
                    {
                        {
                            <d' c'' gs'' e'''>16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                            <f ef' b' g''>16
                        }
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <c' bf' fs'' d'''>16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <d' c'' gs'' e'''>16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s8.
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <d' c'' gs'' e'''>16
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <c' bf' fs'' d'''>16
                            <cs' b' g'' ef'''>16
                        }
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <c' bf' fs'' d'''>16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s4
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s8.
                            \bar "||"
                        }
                    }
                }
            >>
        >>
    >>
