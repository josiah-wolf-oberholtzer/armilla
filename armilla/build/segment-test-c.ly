    \context Score = "Armilla Score" <<
        \tag #'time
        \repeat volta 2
        \context TimeSignatureContext = "TimeSignatureContext" {
            {
                \time 3/8
                \tempo 4=96
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    \concat
                                        {
                                            \vstrut
                                            Z
                                        }
                            " "
                            \fontsize
                                #-3
                                "Notation Test"
                        }
                    }
                s1 * 3/8
            }
            {
                \time 4/8
                s1 * 1/2
            }
            {
                s1 * 1/2
            }
            {
                \time 6/8
                s1 * 3/4
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 3/8
                s1 * 3/8
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
            \repeat volta 2
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \context BowingPositionVoice = "Viola 1 Bowing Voice" {
                    {
                        {
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'16 ^\downbow \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s8.
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4.
                        }
                        {
                            R1 * 1/2
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
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
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                }
                \context BowingBeamingVoice = "Viola 1 Beaming Voice" {
                    \clef "percussion"
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
                        }
                    }
                    {
                        \times 2/3 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                        }
                        {
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
                            r16
                            r8
                        }
                        {
                            r16
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
                            c'16 ]
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r8.
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
                            r16
                            r4.
                        }
                        {
                            R1 * 1/2
                        }
                        {
                            r16
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
                            r16
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
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                }
                \context Dynamics = "Viola 1 Dynamics" {
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16 \!
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16
                            c'16
                        }
                        {
                            c'16
                            c'16
                            c'16 \!
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16
                            c'16
                            c'16 \!
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16 \!
                        }
                    }
                    {
                        {
                            r16
                            r4.
                        }
                        {
                            R1 * 1/2
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16
                        }
                        {
                            c'16
                            c'16
                            c'16
                            c'16 \!
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
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16 \!
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \context FingeringPitchesVoice = "Viola 1 Fingering Voice" {
                    \clef "alto"
                    {
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
                            bqs8 [ \glissando
                        }
                        {
                            \set stemLeftBeamCount = 1
                            a8. ]
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'4 - \bendAfter #'4.0
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r8.
                        }
                    }
                    {
                        {
                            a8
                        }
                    }
                    {
                        {
                            r16
                            r4.
                        }
                        {
                            R1 * 1/2
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            gf8 \glissando
                        }
                        {
                            bqs4
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
                            a8 - \bendAfter #'4.0
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 Fingering Voice" {
                    \clef "alto"
                    {
                        {
                            af8
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            bqs8 \glissando
                        }
                        {
                            a8.
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'4 - \bendAfter #'4.0
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s8.
                        }
                    }
                    {
                        {
                            a8
                        }
                    }
                    {
                        {
                            s16
                            s4.
                        }
                        {
                            R1 * 1/2
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            gf8 \glissando
                        }
                        {
                            bqs4
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
                            a8 - \bendAfter #'4.0
                        }
                    }
                    {
                        {
                            s4
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
            \repeat volta 2
            \context BowingStaff = "Viola 2 Bowing Staff" <<
                \context BowingPositionVoice = "Viola 2 Bowing Voice" {
                    {
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
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
                            s16
                            s8
                        }
                        {
                            s8.
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            5
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s4.
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            2
                                            5
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s2
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            2
                                            5
                                }
                            c'16 \glissando
                            \once \override NoteHead.Y-offset = -1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            5
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowingBeamingVoice = "Viola 2 Beaming Voice" {
                    \clef "percussion"
                    {
                        \times 2/3 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
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
                            r16
                            r4
                        }
                        {
                            r16
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
                            \set stemRightBeamCount = 2
                            c'16
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
                            r8.
                        }
                    }
                    {
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
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4.
                        }
                        {
                            R1 * 1/2
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
                            r2
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context Dynamics = "Viola 2 Dynamics" {
                    {
                        \times 2/3 {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16
                            c'16 \!
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16 \!
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16
                        }
                        {
                            c'16
                            c'16 \!
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r8.
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16
                            c'16
                            c'16 \!
                        }
                    }
                    {
                        {
                            r4.
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16 \!
                        }
                    }
                    {
                        {
                            r2
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #constante-hairpin
                            c'16 \f \<
                            c'16
                            c'16 \!
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \context FingeringPitchesVoice = "Viola 2 Fingering Voice" {
                    \clef "alto"
                    {
                        {
                            gf8
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'8
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            a8 - \bendAfter #'4.0 [
                        }
                        {
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                    }
                    {
                        {
                            r16
                            r8
                        }
                        {
                            r8.
                        }
                    }
                    {
                        {
                            b8.
                        }
                    }
                    {
                        {
                            r4.
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            af8
                        }
                    }
                    {
                        {
                            r2
                        }
                        {
                            r16
                        }
                    }
                    {
                        {
                            c'8. - \bendAfter #'4.0
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 Fingering Voice" {
                    \clef "alto"
                    {
                        {
                            gf8
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'8
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            a8 - \bendAfter #'4.0
                        }
                        {
                            c'8
                        }
                    }
                    {
                        {
                            s16
                            s8
                        }
                        {
                            s8.
                        }
                    }
                    {
                        {
                            b8.
                        }
                    }
                    {
                        {
                            s4.
                        }
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        {
                            af8
                        }
                    }
                    {
                        {
                            s2
                        }
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'8. - \bendAfter #'4.0
                        }
                    }
                    {
                        {
                            s4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
            >>
        >>
    >>