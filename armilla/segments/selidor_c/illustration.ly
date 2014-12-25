\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "/Users/josiah/Documents/Scores/armilla/armilla/stylesheets/stylesheet.ily"

\score {
    \context Score = "Armilla Score" <<
        \tag #'time
        \repeat volta 2
        \context TimeSignatureContext = "TimeSignatureContext" {
            {
                \time 5/8
                \tempo 4=36
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    \concat
                                        {
                                            \vstrut
                                            Selidor
                                        }
                            " "
                            \fontsize
                                #-3
                                C
                        }
                    }
                s1 * 5/8
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
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
            {
                \time 6/8
                s1 * 3/4
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
            \repeat volta 2
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \context BowPositionVoice = "Viola 1 RH Position Voice" {
                    \clef "percussion"
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'4. ^\downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'8 \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4. ^ \parenthesize \upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 \glissando
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
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^\upbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'8 ^ \parenthesize \upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^\downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 \glissando
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
                            s8
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16 ^\downbow \glissando
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
                            s8
                            s4
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    \clef "percussion"
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'4.
                        }
                        {
                            c'4
                        }
                        {
                            c'8
                        }
                        {
                            c'4.
                        }
                        {
                            c'4
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            c'8
                        }
                        {
                            c'4
                        }
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
                            c'4
                            c'4
                        }
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
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    \clef "percussion"
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'4. \p \>
                        }
                        {
                            c'4 \ppp \<
                        }
                        {
                            c'8 \p \>
                        }
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'4 \p \>
                            c'16
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        {
                            c'4. \p \>
                        }
                        {
                            c'8 \ppp \<
                        }
                        {
                            c'4 \p \>
                        }
                        {
                            c'16
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'16
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    \clef "alto"
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            a4. \glissando
                        }
                        {
                            \afterGrace
                            cqs'4.
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    f'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            c'4 \glissando
                        }
                        {
                            g8 \glissando
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
                        {
                            c'4. \glissando
                        }
                        {
                            c''4 \glissando
                        }
                        {
                            cqs''4. \glissando
                        }
                        {
                            c''4.
                        }
                        {
                            \parenthesize
                            c''8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c''4 \glissando
                            a'4 \glissando
                        }
                        {
                            c''8
                        }
                    }
                    {
                        {
                            r8
                            r4
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    \clef "alto"
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            a4. \glissando
                        }
                        {
                            cqs'4.
                        }
                        {
                            c'4 \glissando
                        }
                        {
                            g8 \glissando
                        }
                        {
                            c'4.
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4. \glissando
                        }
                        {
                            c''4 \glissando
                        }
                        {
                            cqs''4. \glissando
                        }
                        {
                            c''4.
                        }
                        {
                            \parenthesize
                            c''8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c''4 \glissando
                            a'4 \glissando
                        }
                        {
                            c''8
                        }
                    }
                    {
                        {
                            s8
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
                \context BowPositionVoice = "Viola 2 RH Position Voice" {
                    \clef "percussion"
                    {
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^ \parenthesize \downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^\upbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16 ^\downbow \glissando
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
                            s8
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4 ^ \parenthesize \downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'8 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'4 ^\downbow \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'4 ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'16 \glissando
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
                            s8
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'8 ^\downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'4. ^\upbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'4. ^ \parenthesize \downbow \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            c'8. ^\upbow \glissando
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
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    \clef "percussion"
                    {
                        {
                            c'4.
                        }
                        {
                            c'4
                        }
                        {
                            c'4
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
                            c'4
                        }
                        {
                            c'4
                        }
                        {
                            c'4
                        }
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
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
                            c'8
                        }
                        {
                            c'4.
                        }
                        {
                            c'4.
                        }
                        {
                            c'4.
                        }
                        {
                            c'8. [
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
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    \clef "percussion"
                    {
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'4 \p \>
                        }
                        {
                            c'4 \ppp \<
                            c'16
                            c'16 \p
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \p \>
                        }
                        {
                            c'4 \ppp \<
                        }
                        {
                            c'4 \p \>
                        }
                        {
                            c'8 \ppp \<
                        }
                        {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'16
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'8 \ppp \<
                        }
                        {
                            c'4. \p \>
                        }
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'4. \p \>
                        }
                        {
                            c'8. \ppp \<
                            c'16 \p
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    \clef "alto"
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            a4 \glissando
                            c'4 \glissando
                            \afterGrace
                            a4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            a4.
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            ef'4 \glissando
                        }
                        {
                            \afterGrace
                            cqs'4.
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    ef'
                                    \tweak #'style #'harmonic
                                    bf'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    ef'
                                    \tweak #'style #'harmonic
                                    af'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            ef'8
                        }
                        {
                            \parenthesize
                            ef'4. \glissando
                        }
                        {
                            \afterGrace
                            a'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a'
                                    \tweak #'style #'harmonic
                                    e''
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    a'
                                    \tweak #'style #'harmonic
                                    d''
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            a'8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c''8 \glissando
                        }
                        {
                            a'4. \glissando
                        }
                        {
                            \afterGrace
                            aqs'4.
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c''
                                    \tweak #'style #'harmonic
                                    f''
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            c''4. \glissando
                        }
                        {
                            a'4
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    \clef "alto"
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            a4 \glissando
                            c'4 \glissando
                            a4
                        }
                        {
                            a4.
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            ef'4 \glissando
                        }
                        {
                            cqs'4.
                        }
                        {
                            ef'8
                        }
                        {
                            \parenthesize
                            ef'4. \glissando
                        }
                        {
                            a'4
                        }
                        {
                            a'8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c''8 \glissando
                        }
                        {
                            a'4. \glissando
                        }
                        {
                            aqs'4.
                        }
                        {
                            c''4. \glissando
                        }
                        {
                            a'4
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
    >>
}