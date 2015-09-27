\version "2.19.26"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "../../stylesheets/stylesheet.ily"
\include "../../stylesheets/nonfirst-segment.ily"

\score {
    \context Score = "Armilla Score" \with {
        currentBarNumber = #62
    } <<
        \tag #'time
        \repeat volta 2
        \context TimeSignatureContext = "Time Signature Context" {
            \break
            {
                \tempo 4=72
                \time 5/8
                \mark \markup {
                    \concat
                        {
                            \box
                                \pad-around
                                    #0.5
                                    \caps
                                        D
                            " "
                            \fontsize
                                #-3
                                "Selidor (ii)"
                        }
                    }
                s1 * 5/4
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
                s1 * 5/4
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
                \clef "percussion"
                \context StringContactVoice = "Viola 1 RH String Contact Voice" {
                    {
                        % [Viola 1 RH String Contact Voice] Measure 62
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 63
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
                                                    S.P.
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
                        % [Viola 1 RH String Contact Voice] Measure 64
                        {
                            c'4. \stopTextSpan
                        }
                        % [Viola 1 RH String Contact Voice] Measure 65
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
                                                    M.S.P
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4.. \startTextSpan
                            c'16 \stopTextSpan
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 66
                        {
                            s8
                        }
                    }
                    {
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
                                                \parenthesize
                                                    \caps
                                                        M.S.P
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
                        % [Viola 1 RH String Contact Voice] Measure 67
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
                            c'4 \stopTextSpan \startTextSpan
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 68
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
                                                    S.P.
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \stopTextSpan
                            c'4
                        }
                        % [Viola 1 RH String Contact Voice] Measure 69
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
                                                    M.S.P
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        % [Viola 1 RH String Contact Voice] Measure 70
                        {
                            c'4
                            c'16 \stopTextSpan [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 71
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
                                                \parenthesize
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
                                                    M.S.P
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'2 \startTextSpan
                            c'16 \stopTextSpan [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 62
                        {
                            s8
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
                        % [Viola 1 RH Bow Contact Voice] Measure 63
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
                        \times 2/3 {
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
                            c'4 ^ \parenthesize \upbow \glissando
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
                            c'4 \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 64
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
                        % [Viola 1 RH Bow Contact Voice] Measure 65
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
                            c'4.. ^\downbow \glissando
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
                        % [Viola 1 RH Bow Contact Voice] Measure 66
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
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
                        % [Viola 1 RH Bow Contact Voice] Measure 67
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
                            c'4 ^ \parenthesize \upbow \glissando
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
                        % [Viola 1 RH Bow Contact Voice] Measure 68
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                            c'4 ^ \parenthesize \upbow \glissando
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
                        % [Viola 1 RH Bow Contact Voice] Measure 69
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
                            c'8 \glissando
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 70
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
                            c'16 ^\upbow \glissando [
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 71
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
                            c'2 ^\downbow \glissando
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
                            \breathe
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        % [Viola 1 RH Beaming Voice] Measure 62
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 63
                        {
                            c'8
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 64
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 65
                        {
                            c'4..
                            c'16
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 66
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
                        % [Viola 1 RH Beaming Voice] Measure 67
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 68
                        {
                            c'8
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Beaming Voice] Measure 69
                        {
                            c'4
                        }
                        {
                            c'8
                        }
                        % [Viola 1 RH Beaming Voice] Measure 70
                        {
                            c'4
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 71
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 62
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 63
                        {
                            c'8 \ppp \<
                        }
                        \times 2/3 {
                            c'4 \p \>
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 64
                        {
                            c'4. \ppp \<
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 65
                        {
                            c'4.. \p \>
                            c'16 \ppp
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 66
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 67
                        {
                            c'8 \p \>
                        }
                        {
                            c'4 \ppp \<
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 68
                        {
                            c'8 \p \>
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \ppp \<
                            c'4
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 69
                        {
                            c'4 \p \>
                        }
                        {
                            c'8 \ppp \<
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 70
                        {
                            c'4 \p \>
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \ppp ]
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 71
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'2 \p \>
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \ppp ]
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 1 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 1 LH Pitches Voice" {
                    {
                        % [Viola 1 LH Pitches Voice] Measure 62
                        {
                            r8
                        }
                    }
                    {
                        {
                            \afterGrace
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    a
                                    \tweak #'style #'harmonic
                                    cs'
                                >16
                                <
                                    a
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            \once \override TrillSpanner.bound-details.left.padding = 2
                            \override TrillPitchHead #'stencil = #ly:text-interface::print
                            \override TrillPitchHead #'text = \markup {
                                \musicglyph
                                    #"noteheads.s0harmonic"
                                }
                            \pitchedTrill
                            a4 \startTrillSpan d'
                            <> \stopTrillSpan
                        }
                        % [Viola 1 LH Pitches Voice] Measure 63
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \afterGrace
                            \pitchedTrill
                            c'4 \startTrillSpan f'
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    a
                                    \tweak #'style #'harmonic
                                    d'
                                >16 \stopTrillSpan
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            \revert TrillPitchHead #'stencil
                            \revert TrillPitchHead #'text
                            <> \stopTrillSpan
                            \afterGrace
                            a4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    cqs'
                                    \tweak #'style #'harmonic
                                    eqs'
                                >16
                                <
                                    cqs'
                                    \tweak #'style #'harmonic
                                    gqs'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        % [Viola 1 LH Pitches Voice] Measure 64
                        {
                            \once \override TrillSpanner.bound-details.left.padding = 2
                            \override TrillPitchHead #'stencil = #ly:text-interface::print
                            \override TrillPitchHead #'text = \markup {
                                \musicglyph
                                    #"noteheads.s0harmonic"
                                }
                            \pitchedTrill
                            cqs'4. \startTrillSpan eqf'
                            \revert TrillPitchHead #'stencil
                            \revert TrillPitchHead #'text
                            <> \stopTrillSpan
                        }
                        % [Viola 1 LH Pitches Voice] Measure 65
                        {
                            c'2
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 66
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            \pitchedTrill
                            a4 \startTrillSpan c'
                            <> \stopTrillSpan
                            c'4
                            \afterGrace
                            d'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    a
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        % [Viola 1 LH Pitches Voice] Measure 67
                        {
                            a8
                        }
                        {
                            cqs'4
                            d'4
                        }
                        % [Viola 1 LH Pitches Voice] Measure 68
                        {
                            \afterGrace
                            a8
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    c'
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                <
                                    c'
                                    \tweak #'style #'harmonic
                                    g'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \once \override TrillSpanner.bound-details.left.padding = 2
                            \override TrillPitchHead #'stencil = #ly:text-interface::print
                            \override TrillPitchHead #'text = \markup {
                                \musicglyph
                                    #"noteheads.s0harmonic"
                                }
                            \pitchedTrill
                            c'4 \startTrillSpan f'
                            <> \stopTrillSpan
                            \afterGrace
                            \pitchedTrill
                            a4 \startTrillSpan d'
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    c'
                                    \tweak #'style #'harmonic
                                    f'
                                >16 \stopTrillSpan
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            \revert TrillPitchHead #'stencil
                            \revert TrillPitchHead #'text
                            <> \stopTrillSpan
                        }
                        % [Viola 1 LH Pitches Voice] Measure 69
                        {
                            c'4
                        }
                        {
                            aqs8
                        }
                        % [Viola 1 LH Pitches Voice] Measure 70
                        {
                            c'4.
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 71
                        {
                            r8
                        }
                    }
                    {
                        {
                            a8
                            a2 \repeatTie
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        % [Viola 1 LH Spanner Voice] Measure 62
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4
                            a4 \glissando
                        }
                        % [Viola 1 LH Spanner Voice] Measure 63
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            a4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 64
                        {
                            cqs'4. \glissando
                        }
                        % [Viola 1 LH Spanner Voice] Measure 65
                        {
                            c'2
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 66
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            a4 \glissando
                            c'4 \glissando
                            d'4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 67
                        {
                            a8 \glissando
                        }
                        {
                            cqs'4 \glissando
                            d'4 \glissando
                        }
                        % [Viola 1 LH Spanner Voice] Measure 68
                        {
                            a8
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \glissando
                            a4
                        }
                        % [Viola 1 LH Spanner Voice] Measure 69
                        {
                            c'4 \glissando
                        }
                        {
                            aqs8 \glissando
                        }
                        % [Viola 1 LH Spanner Voice] Measure 70
                        {
                            c'4.
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 71
                        {
                            s8
                        }
                    }
                    {
                        {
                            a8
                            \parenthesize
                            a2
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
                \clef "percussion"
                \context StringContactVoice = "Viola 2 RH String Contact Voice" {
                    {
                        % [Viola 2 RH String Contact Voice] Measure 62
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
                        % [Viola 2 RH String Contact Voice] Measure 63
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
                                                \parenthesize
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
                                                    M.S.P
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 64
                        {
                            c'8. \stopTextSpan [
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
                        % [Viola 2 RH String Contact Voice] Measure 65
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
                                                    S.P.
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
                            c'4 \startTextSpan
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 66
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \stopTextSpan
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 67
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
                                                \parenthesize
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
                                                    M.S.P
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 \startTextSpan
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 68
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'4 \stopTextSpan
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 69
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
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 70
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
                            c'4. \startTextSpan
                        }
                        % [Viola 2 RH String Contact Voice] Measure 71
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
                                                    S.P.
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        {
                            c'2 \stopTextSpan
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 62
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
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
                        % [Viola 2 RH Bow Contact Voice] Measure 63
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                        % [Viola 2 RH Bow Contact Voice] Measure 64
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
                            c'8. \glissando [
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
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
                        % [Viola 2 RH Bow Contact Voice] Measure 65
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
                        % [Viola 2 RH Bow Contact Voice] Measure 66
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
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
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 67
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                            c'4 \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 68
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
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
                            c'4 ^ \parenthesize \upbow \glissando
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
                            c'4 \glissando
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
                            c'4 ^ \parenthesize \upbow \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 69
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
                            c'16 ^\downbow \glissando [
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
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
                        % [Viola 2 RH Bow Contact Voice] Measure 70
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
                            c'4. ^\downbow \glissando
                        }
                        % [Viola 2 RH Bow Contact Voice] Measure 71
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
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'2 \glissando
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
                            c'16 ^ \parenthesize \downbow \glissando [
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
                                }
                            \set stemLeftBeamCount = 2
                            c'16 ]
                            \breathe
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    {
                        % [Viola 2 RH Beaming Voice] Measure 62
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 63
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 64
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
                        % [Viola 2 RH Beaming Voice] Measure 65
                        {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 66
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 67
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 68
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'4
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Beaming Voice] Measure 69
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
                        % [Viola 2 RH Beaming Voice] Measure 70
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 71
                        {
                            c'8
                        }
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 62
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 63
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 64
                        {
                            c'8. \ppp \< [
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
                        % [Viola 2 RH Dynamics Voice] Measure 65
                        {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 66
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 67
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 68
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'4 \ppp \<
                            c'4
                            c'4
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 69
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
                        % [Viola 2 RH Dynamics Voice] Measure 70
                        {
                            c'4. \ppp \<
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 71
                        {
                            c'8 \p \>
                        }
                        {
                            c'2 \ppp \<
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        % [Viola 2 LH Pitches Voice] Measure 62
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \afterGrace
                            a4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    c'
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            c'4
                            \override TrillPitchHead #'stencil = #ly:text-interface::print
                            \override TrillPitchHead #'text = \markup {
                                \musicglyph
                                    #"noteheads.s0harmonic"
                                }
                            \pitchedTrill
                            a4 \startTrillSpan d'
                            \revert TrillPitchHead #'stencil
                            \revert TrillPitchHead #'text
                            <> \stopTrillSpan
                        }
                        % [Viola 2 LH Pitches Voice] Measure 63
                        {
                            c'4
                        }
                        {
                            aqs8
                            aqs4 \repeatTie
                        }
                        % [Viola 2 LH Pitches Voice] Measure 64
                        {
                            a4
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 65
                        {
                            c'4
                            \afterGrace
                            af4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    d'
                                    \tweak #'style #'harmonic
                                    a'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        % [Viola 2 LH Pitches Voice] Measure 66
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            \once \override TrillSpanner.bound-details.left.padding = 2
                            \override TrillPitchHead #'stencil = #ly:text-interface::print
                            \override TrillPitchHead #'text = \markup {
                                \musicglyph
                                    #"noteheads.s0harmonic"
                                }
                            \pitchedTrill
                            d'4 \startTrillSpan f'
                            <> \stopTrillSpan
                            \pitchedTrill
                            g4 \startTrillSpan bf
                            \revert TrillPitchHead #'stencil
                            \revert TrillPitchHead #'text
                            <> \stopTrillSpan
                            \afterGrace
                            aqf4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    g
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                <
                                    g
                                    \tweak #'style #'harmonic
                                    c'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        % [Viola 2 LH Pitches Voice] Measure 67
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            g4
                            \override TrillPitchHead #'stencil = #ly:text-interface::print
                            \override TrillPitchHead #'text = \markup {
                                \musicglyph
                                    #"noteheads.s0harmonic"
                                }
                            \afterGrace
                            \pitchedTrill
                            af4 \startTrillSpan df'
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    g
                                    \tweak #'style #'harmonic
                                    b
                                >16 \stopTrillSpan
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            \revert TrillPitchHead #'stencil
                            \revert TrillPitchHead #'text
                            <> \stopTrillSpan
                        }
                        % [Viola 2 LH Pitches Voice] Measure 68
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \once \override TrillSpanner.bound-details.left.padding = 2
                            \pitchedTrill
                            g4 \startTrillSpan bf
                            <> \stopTrillSpan
                            af4
                            c'4
                            \afterGrace
                            aqs4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    c'
                                    \tweak #'style #'harmonic
                                    g'
                                >16
                                <
                                    c'
                                    \tweak #'style #'harmonic
                                    f'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        % [Viola 2 LH Pitches Voice] Measure 69
                        {
                            c'8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 70
                        {
                            \override TrillPitchHead #'stencil = #ly:text-interface::print
                            \override TrillPitchHead #'text = \markup {
                                \musicglyph
                                    #"noteheads.s0harmonic"
                                }
                            \pitchedTrill
                            a4. \startTrillSpan d'
                            \revert TrillPitchHead #'stencil
                            \revert TrillPitchHead #'text
                            <> \stopTrillSpan
                        }
                        % [Viola 2 LH Pitches Voice] Measure 71
                        {
                            \afterGrace
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    a
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                <
                                    a
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                        }
                        {
                            a2
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        % [Viola 2 LH Spanner Voice] Measure 62
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            a4
                            c'4 \glissando
                            a4 \glissando
                        }
                        % [Viola 2 LH Spanner Voice] Measure 63
                        {
                            c'4 \glissando
                        }
                        {
                            aqs8
                            \parenthesize
                            aqs4 \glissando
                        }
                        % [Viola 2 LH Spanner Voice] Measure 64
                        {
                            a4
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 65
                        {
                            c'4 \glissando
                            af4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 66
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            d'4 \glissando
                            g4 \glissando
                            aqf4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 67
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            g4 \glissando
                            af4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 68
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            g4 \glissando
                            af4 \glissando
                            c'4 \glissando
                            aqs4
                        }
                        % [Viola 2 LH Spanner Voice] Measure 69
                        {
                            c'8
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 70
                        {
                            a4. \glissando
                        }
                        % [Viola 2 LH Spanner Voice] Measure 71
                        {
                            c'4
                        }
                        {
                            a2
                        }
                    }
                }
            >>
        >>
    >>
}