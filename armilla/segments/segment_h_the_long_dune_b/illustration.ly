\version "2.19.32"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"
\include "../../stylesheets/nonfirst-segment.ily"

\score {
    \context Score = "Armilla Score" \with {
        currentBarNumber = #103
    } <<
        \tag #'time
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=36
                \time 5/8
                \mark \markup {
                    \concat
                        {
                            \box
                                \pad-around
                                    #0.5
                                    \caps
                                        G
                            " "
                            \fontsize
                                #-3
                                "The Long Dune (ii)"
                        }
                    }
                s1 * 5/4
            }
            {
                \time 3/4
                s1 * 3/4
            }
            {
                \time 5/8
                s1 * 5/4
            }
            {
                \time 2/4
                s1 * 1
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 6/8
                s1 * 3/4
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/4
                s1 * 3/4
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
                \time 3/8
                s1 * 3/4
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
                        % [Viola 1 RH String Contact Voice] Measure 103
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 104
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
                        % [Viola 1 RH String Contact Voice] Measure 105
                        {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 106
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4 \stopTextSpan
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 107
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 108
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 109
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
                        % [Viola 1 RH String Contact Voice] Measure 110
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 111
                        {
                            c'4. \stopTextSpan
                        }
                        {
                            c'4.
                        }
                        % [Viola 1 RH String Contact Voice] Measure 112
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
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
                            c'4. \startTextSpan
                        }
                        % [Viola 1 RH String Contact Voice] Measure 113
                        {
                            c'4
                        }
                        {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 114
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ] \stopTextSpan
                        }
                    }
                    {
                        {
                            s4
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
                            c'16 [ \startTextSpan
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
                            c'16 ]
                        }
                        % [Viola 1 RH String Contact Voice] Measure 115
                        {
                            c'4
                        }
                        {
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 116
                        {
                            c'4. \stopTextSpan
                        }
                        % [Viola 1 RH String Contact Voice] Measure 117
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                            \bar "|."
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 103
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 104
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
                        % [Viola 1 RH Bow Contact Voice] Measure 105
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
                        % [Viola 1 RH Bow Contact Voice] Measure 106
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
                            c'8 \glissando
                        }
                        \times 2/3 {
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
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'4 \glissando
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
                        % [Viola 1 RH Bow Contact Voice] Measure 107
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
                            c'2 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'16 ^\upbow \glissando [
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 108
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 109
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
                        % [Viola 1 RH Bow Contact Voice] Measure 110
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
                        % [Viola 1 RH Bow Contact Voice] Measure 111
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
                            c'4. _\accent \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 112
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
                            c'16 _\accent \glissando [
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
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
                            c'4. ^\upbow \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 113
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
                            c'4 _\accent \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 114
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
                            c'16 \glissando [
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s4
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
                            c'16 ^\downbow _\accent \glissando [
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
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
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
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
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
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
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
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
                            \set stemLeftBeamCount = 2
                            c'16 _\accent ] \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 115
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
                            c'4 _\accent \glissando
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
                            c'4 ^\upbow _\accent \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 116
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
                            c'4. ^\downbow _\accent \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 117
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
                            c'8. ^\upbow _\accent \glissando [
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                            \bar "|."
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        % [Viola 1 RH Beaming Voice] Measure 103
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 104
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 105
                        {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 106
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 107
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 108
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 109
                        {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 110
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 111
                        {
                            c'4.
                        }
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 112
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
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 113
                        {
                            c'4
                        }
                        {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 114
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
                            c'16 ]
                        }
                        % [Viola 1 RH Beaming Voice] Measure 115
                        {
                            c'4
                        }
                        {
                            c'4 :32
                        }
                        % [Viola 1 RH Beaming Voice] Measure 116
                        {
                            c'4. :32
                        }
                        % [Viola 1 RH Beaming Voice] Measure 117
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                            \bar "|."
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 103
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 104
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \f \>
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 105
                        {
                            c'4 \p \<
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 106
                        {
                            c'8 \f \>
                        }
                        \times 2/3 {
                            c'4 \mf \<
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 107
                        {
                            c'2 \ff \>
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 108
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 109
                        {
                            c'4 \p \<
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 110
                        {
                            c'8 \mf \>
                        }
                        {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 111
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'4. \f \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 112
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4. \ff \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 113
                        {
                            c'4 \p \<
                        }
                        {
                            c'4 \mf \>
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 114
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 \ppp \< [
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
                            c'16 ]
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 115
                        {
                            c'4 \p \>
                        }
                        {
                            c'4 \ppp \<
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 116
                        {
                            c'4. \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 117
                        {
                            c'8. \ppp \< [
                            \set stemLeftBeamCount = 2
                            c'16 \f ]
                        }
                    }
                    {
                        {
                            s8
                            \bar "|."
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    {
                        % [Viola 1 LH Pitches Voice] Measure 103
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 5/8
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 104
                        {
                            <c' af'>4.
                            <c' af'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 105
                        {
                            <a d'>2.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 106
                        {
                            <c' af'>4.
                            <c' af'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 107
                        {
                            <fs d'>4.
                            <fs d'>4 \repeatTie
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 108
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 1/2
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 109
                        {
                            <cqs' fqs'>2
                        }
                        % [Viola 1 LH Pitches Voice] Measure 110
                        {
                            <g ef'>4.
                            <g ef'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 111
                        {
                            <a d'>2.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 112
                        {
                            <f bf>8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            <a g'>8
                            <a g'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 113
                        {
                            <fs d'>4
                        }
                        {
                            <eqs cqs'>2
                        }
                        % [Viola 1 LH Pitches Voice] Measure 114
                        {
                            <ds cs'>8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            <a f'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 115
                        {
                            <fs b>2
                        }
                        % [Viola 1 LH Pitches Voice] Measure 116
                        {
                            <c' af'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 117
                        {
                            <a f'>4
                        }
                    }
                    {
                        {
                            r8
                            \bar "|."
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        % [Viola 1 LH Spanner Voice] Measure 103
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 104
                        {
                            <c' af'>4.
                            <c' af'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 105
                        {
                            <a d'>2.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 106
                        {
                            <c' af'>4.
                            <c' af'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 107
                        {
                            <fs d'>4.
                            <fs d'>4
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 108
                        {
                            R1 * 1/2
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 109
                        {
                            <cqs' fqs'>2
                        }
                        % [Viola 1 LH Spanner Voice] Measure 110
                        {
                            <g ef'>4.
                            <g ef'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 111
                        {
                            <a d'>2.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 112
                        {
                            <f bf>8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <a g'>8
                            <a g'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 113
                        {
                            <fs d'>4
                        }
                        {
                            <eqs cqs'>2
                        }
                        % [Viola 1 LH Spanner Voice] Measure 114
                        {
                            <ds cs'>8
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            <a f'>4.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 115
                        {
                            <fs b>2
                        }
                        % [Viola 1 LH Spanner Voice] Measure 116
                        {
                            <c' af'>4.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 117
                        {
                            <a f'>4
                        }
                    }
                    {
                        {
                            s8
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
                        % [Viola 2 RH String Contact Voice] Measure 103
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
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 104
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 105
                        {
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
                            c'4 \stopTextSpan \startTextSpan
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 106
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 107
                        {
                            c'2
                            c'16 \stopTextSpan [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 108
                        {
                            s4
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
                                                \parenthesize
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
                            c'8 \startTextSpan
                        }
                        % [Viola 2 RH String Contact Voice] Measure 109
                        {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 110
                        {
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
                            c'4. \stopTextSpan \startTextSpan
                        }
                        % [Viola 2 RH String Contact Voice] Measure 111
                        {
                            c'8
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 112
                        {
                            c'2 \stopTextSpan
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 113
                        {
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Ord.
                                }
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 114
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            D.P.
                                }
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 115
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
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
                            s8.
                        }
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 116
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
                        }
                    }
                    {
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
                        % [Viola 2 RH String Contact Voice] Measure 117
                        {
                            s8
                        }
                    }
                    {
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
                            \bar "|."
                        }
                    }
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 103
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
                        % [Viola 2 RH Bow Contact Voice] Measure 104
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 105
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
                        % [Viola 2 RH Bow Contact Voice] Measure 106
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'4 \glissando
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
                        % [Viola 2 RH Bow Contact Voice] Measure 107
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
                            c'2 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16 ^\downbow \glissando [
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 108
                        {
                            s4
                            s8
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
                            c'8 ^\downbow \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 109
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
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 110
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
                            c'4 _\accent \glissando
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
                        % [Viola 2 RH Bow Contact Voice] Measure 111
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
                            c'8 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            c'4 _\accent \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
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
                            c'4 ^\downbow \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 112
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
                            c'2 ^\upbow _\accent \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'16 ^\downbow _\accent \glissando [
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 113
                        {
                            s8
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
                        % [Viola 2 RH Bow Contact Voice] Measure 114
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
                            c'8. \glissando [
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
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
                        % [Viola 2 RH Bow Contact Voice] Measure 115
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
                            c'16 _\accent \glissando [
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 116
                        {
                            \once \override NoteHead.style = #'cross
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
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            s8.
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 117
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
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
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    {
                        % [Viola 2 RH Beaming Voice] Measure 103
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 104
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 105
                        {
                            c'4
                        }
                        {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 106
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 107
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH Beaming Voice] Measure 108
                        {
                            r4
                            r8
                        }
                    }
                    {
                        {
                            c'8
                        }
                        % [Viola 2 RH Beaming Voice] Measure 109
                        {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 110
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 111
                        {
                            c'8
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 112
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH Beaming Voice] Measure 113
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
                        % [Viola 2 RH Beaming Voice] Measure 114
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 115
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
                            r8.
                        }
                    }
                    {
                        % [Viola 2 RH Beaming Voice] Measure 116
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
                        % [Viola 2 RH Beaming Voice] Measure 117
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
                            r8.
                            \bar "|."
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 103
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \fff \>
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 104
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \f \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 105
                        {
                            c'4 \p \<
                        }
                        {
                            c'4 \f \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 106
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \mf \<
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 107
                        {
                            c'2 \ff \>
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 108
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            c'8 \mf \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 109
                        {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 110
                        {
                            c'4 \ppp \<
                        }
                        {
                            c'4. \f \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 111
                        {
                            c'8 \p \<
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \ff \>
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 112
                        {
                            c'2 \p \<
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \mf ]
                        }
                    }
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 113
                        {
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \<
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 114
                        {
                            c'8. \mf \> [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                    {
                        {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 115
                        {
                            c'16 \ppp [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 \mf
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 116
                        {
                            c'16 \mf
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        {
                            c'16 \mf
                        }
                    }
                    {
                        {
                            s8.
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 117
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'16 \mf
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
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        % [Viola 2 LH Pitches Voice] Measure 103
                        {
                            <a f'>4.
                            <a f'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 104
                        {
                            <c' f'>4.
                            <c' f'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 105
                        {
                            <a f'>2.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 106
                        {
                            <g ef'>4.
                            <g ef'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 107
                        {
                            <ftqs bqs>4.
                            <ftqs bqs>4 \repeatTie
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 108
                        {
                            r4
                            r8
                        }
                    }
                    {
                        {
                            <c' af'>8
                        }
                        % [Viola 2 LH Pitches Voice] Measure 109
                        {
                            <gs cs'>2
                        }
                        % [Viola 2 LH Pitches Voice] Measure 110
                        {
                            <c' f'>4.
                            <c' f'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 111
                        {
                            <gs fs'>2.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 112
                        {
                            <a f'>4.
                            <a f'>4 \repeatTie
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 113
                        {
                            r8
                        }
                    }
                    {
                        {
                            <ftqs dqs'>8
                            <ftqs dqs'>2 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 114
                        {
                            <fs e'>4
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'style = #'cross
                            <g b>8
                            <g b>4. \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 115
                        {
                            <b d'>8
                            \revert NoteHead #'style
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
                            <
                                cs'
                                b'
                                g''
                                \tweak #'color #red
                                ef'''
                            >16
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 116
                        {
                            <fs e' c'' gs''>16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            r8.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 117
                        {
                            r8
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                            \bar "|."
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        % [Viola 2 LH Spanner Voice] Measure 103
                        {
                            <a f'>4.
                            <a f'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 104
                        {
                            <c' f'>4.
                            <c' f'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 105
                        {
                            <a f'>2.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 106
                        {
                            <g ef'>4.
                            <g ef'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 107
                        {
                            <ftqs bqs>4.
                            <ftqs bqs>4
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 108
                        {
                            s4
                            s8
                        }
                    }
                    {
                        {
                            <c' af'>8
                        }
                        % [Viola 2 LH Spanner Voice] Measure 109
                        {
                            <gs cs'>2
                        }
                        % [Viola 2 LH Spanner Voice] Measure 110
                        {
                            <c' f'>4.
                            <c' f'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 111
                        {
                            <gs fs'>2.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 112
                        {
                            <a f'>4.
                            <a f'>4
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 113
                        {
                            s8
                        }
                    }
                    {
                        {
                            <ftqs dqs'>8
                            <ftqs dqs'>2
                        }
                        % [Viola 2 LH Spanner Voice] Measure 114
                        {
                            <fs e'>4
                        }
                    }
                    {
                        {
                            <g b>8
                            <g b>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 115
                        {
                            <b d'>8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <
                                cs'
                                b'
                                g''
                                \tweak #'color #red
                                ef'''
                            >16
                        }
                    }
                    {
                        {
                            s8.
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 116
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
                        }
                        % [Viola 2 LH Spanner Voice] Measure 117
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
                            s8.
                                _ \markup {
                                    \italic
                                        \right-column
                                            {
                                                \null
                                                \null
                                                \null
                                                "Portland, OR"
                                                "Fresh Meadows, NY"
                                                "September 2014 - January 2015"
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
