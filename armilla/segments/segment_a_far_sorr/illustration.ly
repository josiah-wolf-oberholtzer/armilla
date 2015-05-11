\version "2.19.17"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"

\score {
    \context Score = "Armilla Score" \with {
        currentBarNumber = #1
    } <<
        \tag #'time
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=36
                \time 5/8
                \mark \markup {
                    \fontsize
                        #-3
                        "Far Sorr"
                    }
                s1 * 5/4
            }
            {
                \time 6/8
                s1 * 3/4
            }
            {
                \time 5/8
                s1 * 15/8
            }
            {
                \time 6/8
                s1 * 3/4
            }
            {
                \time 3/8
                s1 * 3/4
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
                \time 5/8
                s1 * 15/8
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
                \time 6/8
                s1 * 3/4
            }
            {
                \time 3/4
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
                        % [Viola 1 RH String Contact Voice] Measure 1
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 2
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            D.P.
                                }
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 3
                        {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 4
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 5
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 6
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 7
                        {
                            R1 * 3/4
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 8
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
                            c'4. \startTextSpan
                        }
                        % [Viola 1 RH String Contact Voice] Measure 9
                        {
                            c'4
                        }
                        {
                            c'8
                        }
                        % [Viola 1 RH String Contact Voice] Measure 10
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            c'8 \stopTextSpan [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH String Contact Voice] Measure 11
                        {
                            c'4.
                        }
                        % [Viola 1 RH String Contact Voice] Measure 12
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
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
                            c'8 [ \startTextSpan
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH String Contact Voice] Measure 13
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        % [Viola 1 RH String Contact Voice] Measure 14
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
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH String Contact Voice] Measure 15
                        {
                            c'4..
                            c'16 \stopTextSpan
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 16
                        {
                            R1 * 5/8
                        }
                        % [Viola 1 RH String Contact Voice] Measure 17
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
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                        }
                        % [Viola 1 RH String Contact Voice] Measure 18
                        {
                            c'4.
                        }
                        {
                            c'4.
                        }
                        % [Viola 1 RH String Contact Voice] Measure 19
                        \times 8/9 {
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
                            c'16 \stopTextSpan [ \startTextSpan
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
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        {
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 20
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
                        % [Viola 1 RH String Contact Voice] Measure 21
                        {
                            c'4
                        }
                        \times 2/3 {
                            c'4 \stopTextSpan
                            c'4
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 22
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 23
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 1
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 2
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
                        % [Viola 1 RH Bow Contact Voice] Measure 3
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
                        % [Viola 1 RH Bow Contact Voice] Measure 4
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
                        % [Viola 1 RH Bow Contact Voice] Measure 5
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
                            c'4 ^\upbow \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 6
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
                            c'16 \glissando [
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
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 7
                        {
                            R1 * 3/4
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 8
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
                            c'4. ^\downbow \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 9
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
                        % [Viola 1 RH Bow Contact Voice] Measure 10
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'8 _\accent \glissando [
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 _\accent \glissando
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 _\accent \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            \set stemLeftBeamCount = 1
                            c'8 ^\downbow _\accent ] \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 11
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
                            c'4. ^\upbow _\accent \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 12
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
                        {
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'8 ^\upbow \glissando [
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            \set stemLeftBeamCount = 1
                            c'8 _\accent ] \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 13
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
                        % [Viola 1 RH Bow Contact Voice] Measure 14
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
                            c'4 _\accent \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
                            c'8 _\accent \glissando [
                            \once \override NoteHead.Y-offset = 1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            7
                                            8
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ^\upbow _\accent \glissando
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            \set stemLeftBeamCount = 1
                            c'8 ^\downbow _\accent ] \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 15
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
                            c'4.. ^\upbow _\accent \glissando
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
                        % [Viola 1 RH Bow Contact Voice] Measure 16
                        {
                            R1 * 5/8
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 17
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
                        % [Viola 1 RH Bow Contact Voice] Measure 18
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
                            c'4. \glissando
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
                            c'4. \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 19
                        \times 8/9 {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'16 _\accent \glissando [
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
                            c'16 \glissando
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
                            c'16 \glissando
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
                            \set stemRightBeamCount = 2
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
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16 _\accent \glissando
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
                            \set stemRightBeamCount = 2
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
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16 ^\downbow _\accent \glissando
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
                            \set stemRightBeamCount = 2
                            c'16 ^\upbow _\accent \glissando
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
                            c'16 ^\downbow _\accent ] \glissando
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
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 20
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
                            c'16 ^\upbow \glissando [
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
                            \set stemRightBeamCount = 2
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
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
                            c'16 ^\downbow _\accent ] \glissando
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
                            c'4. _\accent \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 21
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
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'4 _\accent \glissando
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
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 22
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
                        {
                            s4
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 23
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        % [Viola 1 RH Beaming Voice] Measure 1
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 2
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 3
                        {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 4
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 5
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 6
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 7
                        {
                            R1 * 3/4
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 8
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 9
                        {
                            c'4
                        }
                        {
                            c'8
                        }
                        % [Viola 1 RH Beaming Voice] Measure 10
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH Beaming Voice] Measure 11
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 12
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH Beaming Voice] Measure 13
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 14
                        {
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 :64 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH Beaming Voice] Measure 15
                        {
                            c'4..
                            c'16
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 16
                        {
                            R1 * 5/8
                        }
                        % [Viola 1 RH Beaming Voice] Measure 17
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 18
                        {
                            c'4.
                        }
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 19
                        \times 8/9 {
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
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        {
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 20
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
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 21
                        {
                            c'4
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 22
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
                        % [Viola 1 RH Beaming Voice] Measure 23
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 1
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 2
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 3
                        {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 4
                        {
                            c'8 \p \>
                        }
                        \times 2/3 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 5
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 6
                        {
                            c'2 \ppp \<
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \f ]
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 7
                        {
                            R1 * 3/4
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 8
                        {
                            c'4. \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 9
                        {
                            c'4 \ppp \<
                        }
                        {
                            c'8 \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 10
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            c'8 \ppp \< [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 11
                        {
                            c'4. \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 12
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \ppp ]
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 \f \> [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 13
                        {
                            c'4 \p \>
                        }
                        {
                            c'4. \ppp \<
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 14
                        {
                            c'4 \p \>
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 \ppp \< [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 15
                        {
                            c'4.. \p \>
                            c'16 \ppp
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 16
                        {
                            R1 * 5/8
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 17
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 18
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'4. \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 19
                        \times 8/9 {
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
                        {
                            c'4 \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 20
                        {
                            c'16 \ppp \< [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        {
                            c'4. \f \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 21
                        {
                            c'4 \p \>
                        }
                        \times 2/3 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 22
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
                        % [Viola 1 RH Dynamics Voice] Measure 23
                        {
                            R1 * 3/8
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    {
                        % [Viola 1 LH Pitches Voice] Measure 1
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
                        % [Viola 1 LH Pitches Voice] Measure 2
                        {
                            \clef "percussion"
                            \override NoteHead #'style = #'cross
                            <g b>4.
                            <g b>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 3
                        {
                            <b d'>2.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 4
                        {
                            <d' f'>8
                        }
                        {
                            <g b>4
                            <g b>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 5
                        {
                            <b d'>4.
                            <b d'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 6
                        {
                            <d' f'>4.
                            <d' f'>4 \repeatTie
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 7
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/4
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 8
                        {
                            <a f'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 9
                        {
                            <fs b>8
                        }
                        {
                            <c' af'>4
                        }
                        % [Viola 1 LH Pitches Voice] Measure 10
                        {
                            <gs e'>4.
                        }
                        {
                            <aqf dqf'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 11
                        {
                            <g ef'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 12
                        {
                            <c' f'>8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            <a d'>8
                            <a d'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 13
                        {
                            <c' bf'>4
                        }
                        {
                            <gs e'>8
                            <gs e'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 14
                        {
                            <cqs' aqf'>4
                        }
                        {
                            <gs fs'>8
                            <gs fs'>4 \repeatTie
                        }
                        % [Viola 1 LH Pitches Voice] Measure 15
                        {
                            <g ef'>2
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 16
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 5/8
                            \stopStaff
                            \startStaff
                        }
                        % [Viola 1 LH Pitches Voice] Measure 17
                        {
                            r8
                        }
                    }
                    {
                        {
                            <a d'>4
                        }
                        % [Viola 1 LH Pitches Voice] Measure 18
                        {
                            <fs d'>4.
                        }
                        {
                            <a f'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 19
                        {
                            <ftqs bqs>4
                        }
                        {
                            <ds b>2
                        }
                        % [Viola 1 LH Pitches Voice] Measure 20
                        {
                            <fs b>4.
                        }
                        {
                            <a d'>4
                        }
                        % [Viola 1 LH Pitches Voice] Measure 21
                        {
                            <c' bf'>4
                        }
                        {
                            <a f'>2
                        }
                        % [Viola 1 LH Pitches Voice] Measure 22
                        {
                            <cqs' aqf'>8
                        }
                    }
                    {
                        {
                            r4
                        }
                        % [Viola 1 LH Pitches Voice] Measure 23
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        % [Viola 1 LH Spanner Voice] Measure 1
                        {
                            R1 * 5/8
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 2
                        {
                            <g b>4.
                            <g b>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 3
                        {
                            <b d'>2.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 4
                        {
                            <d' f'>8
                        }
                        {
                            <g b>4
                            <g b>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 5
                        {
                            <b d'>4.
                            <b d'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 6
                        {
                            <d' f'>4.
                            <d' f'>4
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 7
                        {
                            R1 * 3/4
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 8
                        {
                            <a f'>4.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 9
                        {
                            <fs b>8
                        }
                        {
                            <c' af'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 10
                        {
                            <gs e'>4.
                        }
                        {
                            <aqf dqf'>4.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 11
                        {
                            <g ef'>4.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 12
                        {
                            <c' f'>8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <a d'>8
                            <
                                \parenthesize
                                a
                                \parenthesize
                                d'
                            >4 \glissando
                        }
                        % [Viola 1 LH Spanner Voice] Measure 13
                        {
                            <c' bf'>4 \glissando
                        }
                        {
                            <gs e'>8
                            <gs e'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 14
                        {
                            <cqs' aqf'>4
                        }
                        {
                            <gs fs'>8
                            <gs fs'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 15
                        {
                            <g ef'>2
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 16
                        {
                            R1 * 5/8
                        }
                        % [Viola 1 LH Spanner Voice] Measure 17
                        {
                            s8
                        }
                    }
                    {
                        {
                            <a d'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 18
                        {
                            <fs d'>4. \glissando
                        }
                        {
                            <a f'>4. \glissando
                        }
                        % [Viola 1 LH Spanner Voice] Measure 19
                        {
                            <ftqs bqs>4 \glissando
                        }
                        {
                            <ds b>2
                        }
                        % [Viola 1 LH Spanner Voice] Measure 20
                        {
                            <fs b>4.
                        }
                        {
                            <a d'>4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 21
                        {
                            <c' bf'>4
                        }
                        {
                            <a f'>2
                        }
                        % [Viola 1 LH Spanner Voice] Measure 22
                        {
                            <cqs' aqf'>8
                        }
                    }
                    {
                        {
                            s4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 23
                        {
                            R1 * 3/8
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
                        % [Viola 2 RH String Contact Voice] Measure 1
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
                        % [Viola 2 RH String Contact Voice] Measure 2
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        % [Viola 2 RH String Contact Voice] Measure 3
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 4
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 5
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
                        % [Viola 2 RH String Contact Voice] Measure 6
                        {
                            c'4
                        }
                        {
                            c'4. \stopTextSpan
                        }
                        % [Viola 2 RH String Contact Voice] Measure 7
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s4
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
                            c'8 \startTextSpan
                        }
                        % [Viola 2 RH String Contact Voice] Measure 8
                        {
                            c'4.
                        }
                        % [Viola 2 RH String Contact Voice] Measure 9
                        {
                            c'4.
                        }
                        % [Viola 2 RH String Contact Voice] Measure 10
                        \times 2/3 {
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
                            c'8 \stopTextSpan [ \startTextSpan
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 11
                        {
                            c'8
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
                            c'4 \stopTextSpan \startTextSpan
                        }
                        % [Viola 2 RH String Contact Voice] Measure 12
                        {
                            c'2
                            c'16 \stopTextSpan [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 13
                        {
                            s8
                        }
                    }
                    {
                        \times 4/5 {
                            c'8 [ ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            M.S.T.
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 2 RH String Contact Voice] Measure 14
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 15
                        {
                            R1 * 1/2
                        }
                        % [Viola 2 RH String Contact Voice] Measure 16
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
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 17
                        {
                            c'4.
                        }
                        % [Viola 2 RH String Contact Voice] Measure 18
                        {
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
                            c'4 \stopTextSpan \startTextSpan
                        }
                        % [Viola 2 RH String Contact Voice] Measure 19
                        {
                            c'4.
                        }
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ] \stopTextSpan
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 20
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
                        % [Viola 2 RH String Contact Voice] Measure 21
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
                            s16
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
                            s16
                        }
                    }
                    {
                        {
                            c'16 [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 2 RH String Contact Voice] Measure 22
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Pizz.
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        % [Viola 2 RH String Contact Voice] Measure 23
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                    }
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 1
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
                        % [Viola 2 RH Bow Contact Voice] Measure 2
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
                            c'4. \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 3
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
                            c'8 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                        % [Viola 2 RH Bow Contact Voice] Measure 4
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                        % [Viola 2 RH Bow Contact Voice] Measure 5
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
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
                        % [Viola 2 RH Bow Contact Voice] Measure 6
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
                            c'4. ^\upbow \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 7
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
                            c'16 ^\downbow \glissando [
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
                            s4
                            s4
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
                            c'8 ^\downbow \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 8
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
                            c'4. \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 9
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
                            c'4. \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 10
                        \times 2/3 {
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            c'8 _\accent \glissando [
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            \set stemLeftBeamCount = 1
                            c'8 ] \glissando
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
                            c'4 _\accent \glissando
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
                        % [Viola 2 RH Bow Contact Voice] Measure 11
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
                            c'8 ^\upbow \glissando
                        }
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
                            c'4 ^\downbow _\accent \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 12
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
                        % [Viola 2 RH Bow Contact Voice] Measure 13
                        {
                            s8
                        }
                    }
                    {
                        \times 4/5 {
                            \once \override NoteHead.Y-offset = 2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            1
                                }
                            c'8 ^\upbow \glissando [
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 \glissando
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 _\accent \glissando
                            \once \override NoteHead.Y-offset = -0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            8
                                }
                            \set stemLeftBeamCount = 1
                            c'8 ] \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 14
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
                            c'2 \glissando
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
                            c'16 _\accent \glissando [
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
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 15
                        {
                            R1 * 1/2
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 16
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
                        % [Viola 2 RH Bow Contact Voice] Measure 17
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
                            c'4. \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 18
                        {
                            \once \override Glissando.style = #'zigzag
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
                            c'4 \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 19
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
                            c'4. \glissando
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
                            c'8. \glissando [
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
                        % [Viola 2 RH Bow Contact Voice] Measure 20
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
                        % [Viola 2 RH Bow Contact Voice] Measure 21
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
                            s16
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
                            s16
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 [
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 22
                        {
                            s4
                        }
                    }
                    {
                        {
                            \once \override NoteHead.style = #'cross
                            c'16 [
                            \once \override NoteHead.style = #'cross
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 23
                        {
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    {
                        % [Viola 2 RH Beaming Voice] Measure 1
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 2
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 3
                        {
                            c'8
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 4
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 5
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 6
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 7
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r4
                            r4
                        }
                    }
                    {
                        {
                            c'8
                        }
                        % [Viola 2 RH Beaming Voice] Measure 8
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 9
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 10
                        \times 2/3 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        {
                            c'4
                            c'4 :32
                        }
                        % [Viola 2 RH Beaming Voice] Measure 11
                        {
                            c'8 :64
                        }
                        {
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 12
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH Beaming Voice] Measure 13
                        {
                            r8
                        }
                    }
                    {
                        \times 4/5 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 2 RH Beaming Voice] Measure 14
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 2 RH Beaming Voice] Measure 15
                        {
                            R1 * 1/2
                        }
                        % [Viola 2 RH Beaming Voice] Measure 16
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 17
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 18
                        {
                            c'4
                            c'4
                        }
                        {
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 19
                        {
                            c'4.
                        }
                        {
                            c'8. :64 [
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
                        % [Viola 2 RH Beaming Voice] Measure 20
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
                            r8.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 21
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
                        % [Viola 2 RH Beaming Voice] Measure 22
                        {
                            r4
                        }
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        % [Viola 2 RH Beaming Voice] Measure 23
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 1
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 2
                        {
                            c'4 \ppp \<
                        }
                        {
                            c'4. \p \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 3
                        {
                            c'8 \ppp \<
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 4
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \ppp \<
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 5
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \f \>
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 6
                        {
                            c'4 \p \>
                        }
                        {
                            c'4. \ppp \<
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 7
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                    {
                        {
                            s4
                            s4
                        }
                    }
                    {
                        {
                            c'8 \p \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 8
                        {
                            c'4. \ppp \<
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 9
                        {
                            c'4. \p \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 10
                        \times 2/3 {
                            c'8 \ppp \< [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 11
                        {
                            c'8 \ppp \<
                        }
                        {
                            c'4 \f \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 12
                        {
                            c'2 \p \>
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \ppp ]
                        }
                    }
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 13
                        {
                            s8
                        }
                    }
                    {
                        \times 4/5 {
                            c'8 \f \> [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            c'8 ]
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 14
                        {
                            c'2 \p \>
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \ppp ]
                        }
                    }
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 15
                        {
                            R1 * 1/2
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 16
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 17
                        {
                            c'4. \ppp \<
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 18
                        {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'4 \ppp \<
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 19
                        {
                            c'4. \p \>
                        }
                        {
                            c'8. \ppp \< [
                            \set stemLeftBeamCount = 2
                            c'16 \f ]
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 20
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
                        % [Viola 2 RH Dynamics Voice] Measure 21
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
                            s16
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
                            s16
                        }
                    }
                    {
                        {
                            c'16 \mf [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 22
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 \mf [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 23
                        {
                            c'16
                        }
                    }
                    {
                        {
                            s16
                            s4
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        % [Viola 2 LH Pitches Voice] Measure 1
                        {
                            <a f'>4.
                            <a f'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 2
                        {
                            <c' f'>4
                        }
                        {
                            <a f'>8
                            <a f'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 3
                        {
                            <c' af'>8
                        }
                        {
                            <aqs dqs'>4
                            <aqs dqs'>4. \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 4
                        {
                            <c' af'>4.
                            <c' af'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 5
                        {
                            <a d'>4.
                            <a d'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 6
                        {
                            <g c'>4
                        }
                        {
                            <fs e'>8
                            <fs e'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 7
                        {
                            <e c'>8
                        }
                    }
                    {
                        {
                            r4
                            r4
                        }
                    }
                    {
                        {
                            <aqs fqs'>8
                        }
                        % [Viola 2 LH Pitches Voice] Measure 8
                        {
                            <a g'>4.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 9
                        {
                            <f df'>4.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 10
                        {
                            <c' f'>2
                        }
                        {
                            <a f'>4
                        }
                        % [Viola 2 LH Pitches Voice] Measure 11
                        {
                            <c' af'>4.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 12
                        {
                            <aqf dqf'>4.
                            <aqf dqf'>4 \repeatTie
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 13
                        {
                            r8
                        }
                    }
                    {
                        {
                            <c' af'>4
                            <c' af'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 14
                        {
                            <gs cs'>4.
                            <gs cs'>4 \repeatTie
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 15
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 1/2
                            \stopStaff
                            \startStaff
                        }
                        % [Viola 2 LH Pitches Voice] Measure 16
                        {
                            r8
                        }
                    }
                    {
                        {
                            <a f'>4
                            <a f'>4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 17
                        {
                            <fs b>4.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 18
                        {
                            <a f'>4.
                            <a f'>8 \repeatTie
                        }
                        {
                            <fs d'>4
                        }
                        % [Viola 2 LH Pitches Voice] Measure 19
                        {
                            <eqs aqs>4
                        }
                        {
                            <fs d'>4.
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 20
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
                        % [Viola 2 LH Pitches Voice] Measure 21
                        {
                            r8
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16
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
                            <c' bf' fs'' d'''>16
                        }
                    }
                    {
                        {
                            r16
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
                            >16 [
                            \set stemLeftBeamCount = 2
                            <f ef' b' g''>16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                        % [Viola 2 LH Pitches Voice] Measure 22
                        {
                            r4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16 [
                            \set stemLeftBeamCount = 2
                            <
                                d'
                                c''
                                gs''
                                \tweak #'color #red
                                e'''
                            >16 ]
                        }
                        % [Viola 2 LH Pitches Voice] Measure 23
                        {
                            <
                                cs'
                                b'
                                g''
                                \tweak #'color #red
                                ef'''
                            >16
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        % [Viola 2 LH Spanner Voice] Measure 1
                        {
                            <a f'>4.
                            <a f'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 2
                        {
                            <c' f'>4
                        }
                        {
                            <a f'>8
                            <a f'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 3
                        {
                            <c' af'>8
                        }
                        {
                            <aqs dqs'>4
                            <aqs dqs'>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 4
                        {
                            <c' af'>4.
                            <c' af'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 5
                        {
                            <a d'>4.
                            <a d'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 6
                        {
                            <g c'>4
                        }
                        {
                            <fs e'>8
                            <fs e'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 7
                        {
                            <e c'>8
                        }
                    }
                    {
                        {
                            s4
                            s4
                        }
                    }
                    {
                        {
                            <aqs fqs'>8
                        }
                        % [Viola 2 LH Spanner Voice] Measure 8
                        {
                            <a g'>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 9
                        {
                            <f df'>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 10
                        {
                            <c' f'>2
                        }
                        {
                            <a f'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 11
                        {
                            <c' af'>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 12
                        {
                            <aqf dqf'>4.
                            <aqf dqf'>4
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 13
                        {
                            s8
                        }
                    }
                    {
                        {
                            <c' af'>4
                            <c' af'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 14
                        {
                            <gs cs'>4.
                            <gs cs'>4
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 15
                        {
                            R1 * 1/2
                        }
                        % [Viola 2 LH Spanner Voice] Measure 16
                        {
                            s8
                        }
                    }
                    {
                        {
                            <a f'>4
                            <
                                \parenthesize
                                a
                                \parenthesize
                                f'
                            >4 \glissando
                        }
                        % [Viola 2 LH Spanner Voice] Measure 17
                        {
                            <fs b>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 18
                        {
                            <a f'>4.
                            <a f'>8
                        }
                        {
                            <fs d'>4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 19
                        {
                            <eqs aqs>4
                        }
                        {
                            <fs d'>4.
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 20
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
                        % [Viola 2 LH Spanner Voice] Measure 21
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
                            s8
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
                            <
                                cs'
                                b'
                                g''
                                \tweak #'color #red
                                ef'''
                            >16 [
                            \set stemLeftBeamCount = 2
                            <f ef' b' g''>16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 2 LH Spanner Voice] Measure 22
                        {
                            s4
                        }
                    }
                    {
                        {
                            <fs e' c'' gs''>16 [
                            \set stemLeftBeamCount = 2
                            <
                                d'
                                c''
                                gs''
                                \tweak #'color #red
                                e'''
                            >16 ]
                        }
                        % [Viola 2 LH Spanner Voice] Measure 23
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
                            s16
                            s4
                        }
                    }
                }
            >>
        >>
    >>
}