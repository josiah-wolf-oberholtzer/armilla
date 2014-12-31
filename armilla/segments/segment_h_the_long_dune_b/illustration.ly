\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "/Users/josiah/Documents/Scores/armilla/armilla/stylesheets/stylesheet.ily"

\score {
    \context Score = "Armilla Score" <<
        \tag #'time
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
                                    \caps
                                        H
                            " "
                            \fontsize
                                #-3
                                "The Long Dune (ii)"
                        }
                    }
                s1 * 5/8
            }
            {
                \time 3/4
                s1 * 3/4
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
                \time 5/8
                s1 * 5/8
            }
            {
                s1 * 5/8
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
                \time 5/8
                s1 * 5/8
            }
            {
                s1 * 5/8
            }
            {
                \time 6/8
                s1 * 3/4
            }
            {
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
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 1 RH String Contact Voice" {
                    {
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                        }
                        {
                            c'8
                        }
                        {
                            c'4.
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    S.T.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    M.S.T.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4. \stopTextSpan \startTextSpan
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'2
                            c'16 \stopTextSpan
                            c'16
                        }
                    }
                    {
                        {
                            R1 * 3/8
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    S.T.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
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
                            c'4. \stopTextSpan
                        }
                        {
                            c'4..
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            c'4
                            c'4
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
                            c'16
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
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                        }
                        {
                            c'8.
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'4
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            \bar "|."
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'8 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'4 \glissando
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'2 \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'16 ^\upbow \glissando
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
                            R1 * 3/8
                        }
                        {
                            s8
                        }
                    }
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
                            c'4 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'8 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'4 _\accent \glissando
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            c'4.. _\accent \glissando
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
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
                        \times 2/3 {
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
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'8 _\accent \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'4 \glissando
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'16 _\accent \glissando
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
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
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'16 ^\downbow _\accent \glissando
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'16 _\accent \glissando
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'16 _\accent \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'16 _\accent \glissando
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'16 _\accent \glissando
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            c'16 _\accent \glissando
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'16 _\accent \glissando
                        }
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
                            c'8. ^\upbow _\accent \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
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
                            c'4 ^\downbow _\accent \glissando
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 ^\upbow _\accent \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'4 ^\downbow _\accent \glissando
                        }
                        {
                            \once \override Glissando.style = #'zigzag
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 _\accent \glissando
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            \bar "|."
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
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
                            c'4
                            c'4
                        }
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            R1 * 3/8
                        }
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
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            c'4..
                            c'16
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'4
                            c'4
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
                            r8.
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
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            c'8. :64 ]
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'4 :32
                            c'4
                            c'4
                        }
                        {
                            c'4
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                            \bar "|."
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
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
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'2 \ppp \<
                            c'16
                            c'16 \f
                        }
                    }
                    {
                        {
                            R1 * 3/8
                        }
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
                            c'8 \ppp \<
                        }
                        {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'4.. \p \>
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            c'4 \f \>
                            c'4
                            c'4
                        }
                        {
                            c'8 \p \>
                        }
                        {
                            c'4 \ppp \<
                            c'4
                        }
                        {
                            c'16
                            c'16 \p
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        {
                            c'16 \ppp \<
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                        }
                        {
                            c'8. \p \>
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        {
                            c'4 \p \>
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8.
                            \bar "|."
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    {
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        {
                            c'2 ~
                            c'8 ~ [
                        }
                        {
                            c'8 ~ ]
                        }
                        {
                            c'4. ~
                        }
                        {
                            c'8 ~
                        }
                        {
                            c'4 ~
                        }
                        {
                            c'2 ~
                        }
                        {
                            c'8 ~
                        }
                        {
                            c'2
                        }
                    }
                    {
                        {
                            R1 * 3/8
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'2 ~
                        }
                        {
                            c'2 ~
                            c'8 ~
                        }
                        {
                            c'4. ~
                        }
                        {
                            c'2
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'2 ~
                        }
                        {
                            c'8 ~
                        }
                        {
                            c'2 ~
                        }
                        {
                            c'8
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            c'16 ~
                            c'4. ~
                        }
                        {
                            c'4. ~
                            c'16 ~ [
                        }
                        {
                            c'16 ~ ]
                            c'4 ~
                        }
                        {
                            c'4 ~
                            c'16
                        }
                    }
                    {
                        {
                            r8.
                            \bar "|."
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        {
                            c'2
                            c'8
                        }
                        {
                            c'8
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
                            c'2
                        }
                        {
                            c'8
                        }
                        {
                            c'2
                        }
                    }
                    {
                        {
                            R1 * 3/8
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'2
                        }
                        {
                            c'2
                            c'8
                        }
                        {
                            c'4.
                        }
                        {
                            c'2
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'2
                        }
                        {
                            c'8
                        }
                        {
                            c'2
                        }
                        {
                            c'8
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
                            c'4.
                        }
                        {
                            c'4.
                            c'16
                        }
                        {
                            c'16
                            c'4
                        }
                        {
                            c'4
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                            \bar "|."
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                            c'4
                            c'4
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \parenthesize
                                                    \caps
                                                        Ord.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    S.T.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \stopTextSpan \startTextSpan
                        }
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    M.S.T.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \stopTextSpan \startTextSpan
                            c'4
                            c'4
                        }
                        {
                            c'8.
                            c'16 \stopTextSpan
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        {
                            c'2
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
                            \once \override TextSpanner.arrow-width = 0.25
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    Ord.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.bound-details.right-broken.padding = 0
                            \once \override TextSpanner.bound-details.right.arrow = ##t
                            \once \override TextSpanner.bound-details.right.padding = 0
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \halign
                                    #0
                                    \halign
                                        #0
                                        \concat
                                            {
                                                \hspace
                                                    #1.5
                                                \caps
                                                    S.T.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4 \stopTextSpan
                            c'4
                            c'4
                        }
                        {
                            c'2
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 9/8 {
                            c'4
                            c'4
                        }
                        {
                            c'16
                        }
                        {
                            c'2
                            c'16
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                            \bar "|."
                        }
                    }
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
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
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'4 \glissando
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'4. \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'8 \glissando
                        }
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
                            c'4 ^\upbow \glissando
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
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 ^\upbow \glissando
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
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'8. ^\upbow \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
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
                        \times 5/4 {
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'2 \glissando
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'16 _\accent \glissando
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
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
                        }
                        {
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'4 \glissando
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'4 \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'8 _\accent \glissando
                        }
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'4 \glissando
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'4 \glissando
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            c'4 _\accent \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'2 _\accent \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'16 ^\upbow \glissando
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
                            s8.
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 9/8 {
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'4 ^\downbow _\accent \glissando
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'4 _\accent \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'16 _\accent \glissando
                        }
                        {
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'2 _\accent \glissando
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            c'16 _\accent \glissando
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                            \bar "|."
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'4
                        }
                        {
                            c'4
                            c'4
                        }
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
                            c'4
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'8. [
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
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        {
                            c'2
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
                            c'4
                        }
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 9/8 {
                            c'4
                            c'4
                        }
                        {
                            c'16
                        }
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            R1 * 1/2
                            \bar "|."
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \f \>
                            c'4
                            c'4
                        }
                        {
                            c'4 \p \>
                        }
                        {
                            c'4 \ppp \<
                            c'4
                        }
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
                            c'4 \ppp \<
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \f \>
                            c'4
                            c'4
                        }
                        {
                            c'8. \p \>
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
                        \times 5/4 {
                            c'4 \ppp \<
                            c'4
                        }
                        {
                            c'2 \p \>
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
                        }
                        {
                            c'4 \ppp \<
                            c'4
                        }
                        {
                            c'8 \p \>
                        }
                        \times 2/3 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        {
                            c'2 \p \>
                            c'16
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 9/8 {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'16 \ppp \<
                        }
                        {
                            c'2 \p \>
                            c'16
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                            \bar "|."
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        {
                            c'2 ~
                            c'8 ~
                        }
                        {
                            c'4 ~
                        }
                        {
                            c'2 ~
                        }
                        {
                            c'4. ~
                        }
                        {
                            c'4. ~
                        }
                        {
                            c'8 ~ [
                        }
                        {
                            c'8 ~ ]
                            c'4 ~
                        }
                        {
                            c'4 ~
                        }
                        {
                            c'4. ~
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
                            c'2 ~
                            c'8 ~
                        }
                        {
                            c'2 ~
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
                            c'4 ~
                        }
                        {
                            c'2 ~
                        }
                        {
                            c'8 ~
                        }
                        {
                            c'2 ~
                        }
                        {
                            c'2 ~
                            c'8
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            c'8. ~
                            c'4. ~
                        }
                        {
                            c'16 ~ [
                        }
                        {
                            c'16 ~ ]
                            c'4 ~
                            c'4 ~
                            c'16
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            R1 * 1/2
                            \bar "|."
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        {
                            c'2
                            c'8
                        }
                        {
                            c'4
                        }
                        {
                            c'2
                        }
                        {
                            c'4.
                        }
                        {
                            c'4.
                        }
                        {
                            c'8
                        }
                        {
                            c'8
                            c'4
                        }
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            c'4
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'2
                            c'8
                        }
                        {
                            c'2
                            c'8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4
                        }
                        {
                            c'2
                        }
                        {
                            c'8
                        }
                        {
                            c'2
                        }
                        {
                            c'2
                            c'8
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        {
                            c'8.
                            c'4.
                        }
                        {
                            c'16
                        }
                        {
                            c'16
                            c'4
                            c'4
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            R1 * 1/2
                                _ \markup {
                                    \italic
                                        \right-column
                                            {
                                                \null
                                                \null
                                                \null
                                                "Portland, OR"
                                                "September - December 2014"
                                            }
                                    }
                            \bar "|."
                        }
                    }
                }
            >>
        >>
    >>
}