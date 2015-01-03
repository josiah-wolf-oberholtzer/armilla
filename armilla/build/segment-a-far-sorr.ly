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
                                        A
                            " "
                            \fontsize
                                #-3
                                "Far Sorr"
                        }
                    }
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
                \time 2/4
                s1 * 1/2
            }
            {
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
                \time 3/4
                s1 * 3/4
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
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \clef "percussion"
                \context StringContactVoice = "Viola 1 RH String Contact Voice" {
                    {
                        {
                            R1 * 1/2
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
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4. \stopTextSpan \startTextSpan
                        }
                        {
                            c'4.
                        }
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
                            c'4. \stopTextSpan \startTextSpan
                        }
                        {
                            c'4
                        }
                        {
                            c'4. \stopTextSpan
                        }
                        {
                            c'8.
                            c'16
                        }
                    }
                    {
                        {
                            s4.
                        }
                        {
                            R1 * 3/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 \stopTextSpan
                            c'8
                            c'8
                            c'8
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
                        \times 4/5 {
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
                            c'8 \startTextSpan
                            c'8
                            c'8
                            c'8
                            c'8
                        }
                        {
                            c'8
                        }
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8
                            c'8
                            c'8
                            c'8
                        }
                        {
                            c'4..
                            c'16 \stopTextSpan
                        }
                    }
                    {
                        {
                            R1 * 5/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        \times 4/5 {
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
                            c'16 \stopTextSpan \startTextSpan
                            c'16
                            c'16
                            c'16
                            c'16
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        {
                            c'4.
                        }
                        {
                            c'8. \stopTextSpan
                            c'16
                        }
                    }
                    {
                        {
                            s8
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowContactVoice = "Viola 1 RH Bow Contact Voice" {
                    {
                        {
                            R1 * 1/2
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
                            c'4. ^\upbow \glissando
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
                            c'4. ^\upbow \glissando
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
                            c'8. ^\downbow \glissando
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
                            s4.
                        }
                        {
                            R1 * 3/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
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
                            \once \override NoteHead.Y-offset = 1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            4
                                }
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
                            c'4.. ^\downbow _\accent \glissando
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
                            c'8 \glissando
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
                            c'8 \glissando
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
                            c'8 ^\downbow _\accent \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
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
                            c'8 ^\downbow \glissando
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
                            c'4.. \glissando
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
                            R1 * 5/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                        \times 4/5 {
                            \once \override NoteHead.Y-offset = 0.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            5
                                            8
                                }
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
                            c'16 ^\downbow _\accent \glissando
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
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
                            c'16 \glissando
                            \once \override NoteHead.Y-offset = -1.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            4
                                }
                            c'16 ^\upbow \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
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
                            c'16 ^\downbow _\accent \glissando
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
                            c'8 _\accent \glissando
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
                            c'4. \glissando
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
                            s8
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    {
                        {
                            R1 * 1/2
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
                            c'4.
                        }
                        {
                            c'8
                        }
                        {
                            c'4.
                        }
                        {
                            c'4
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
                            r4.
                        }
                        {
                            R1 * 3/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            c'8 :64 ]
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
                            \set stemRightBeamCount = 1
                            c'8
                        }
                        {
                            c'8 ]
                        }
                        {
                            c'4
                            c'4 :32
                        }
                        {
                            c'8 :64 [
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            c'8 :64 ]
                        }
                        {
                            c'4..
                            c'16
                        }
                    }
                    {
                        {
                            R1 * 5/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        \times 4/5 {
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
                            c'16 ]
                        }
                        {
                            c'4
                            c'4
                        }
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
                            \set stemRightBeamCount = 2
                            c'16
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            c'8 ]
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
                            r8
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    {
                        {
                            R1 * 1/2
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
                            c'4. \p \>
                        }
                        {
                            c'8 \ppp \<
                        }
                        {
                            c'4. \f \>
                        }
                        {
                            c'4 \p \>
                        }
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'8. \p \>
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            s4.
                        }
                        {
                            R1 * 3/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 \ppp \<
                            c'8
                            c'8
                            c'8
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
                        \times 4/5 {
                            c'8 \f \>
                            c'8
                            c'8
                            c'8
                            c'8
                        }
                        {
                            c'8 \p \>
                        }
                        {
                            c'4 \ppp \<
                            c'4
                        }
                        {
                            c'8 \p \>
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            c'8 \ppp \<
                            c'8
                            c'8
                            c'8
                        }
                        {
                            c'4.. \p \>
                            c'16 \ppp
                        }
                    }
                    {
                        {
                            R1 * 5/8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        \times 4/5 {
                            c'16 \ppp \<
                            c'16
                            c'16
                            c'16
                            c'16
                        }
                        {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'16 \ppp \<
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                        }
                        {
                            c'8 \f \>
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
                            s8
                        }
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
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 1/2
                            \stopStaff
                            \startStaff
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            <c' af'>2
                        }
                        {
                            <a f'>8
                        }
                        {
                            <c' af'>2
                        }
                        {
                            <a d'>8
                        }
                        {
                            <g f'>4 ~
                            <g f'>4.
                        }
                        {
                            <a f'>4
                        }
                        {
                            <c' bf'>4
                        }
                        {
                            <a f'>4
                        }
                        {
                            <c' af'>4.
                        }
                        {
                            <a f'>4
                        }
                    }
                    {
                        {
                            r4.
                        }
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        {
                            <a f'>2
                        }
                        {
                            <c' f'>2 ~
                            <c' f'>8
                        }
                        {
                            <af e'>4.
                        }
                        {
                            <c' af'>2
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            <aqf dqf'>2
                        }
                        {
                            <g ef'>8
                        }
                        {
                            <c' f'>2
                        }
                        {
                            <a d'>8
                        }
                        {
                            <c' bf'>8 ~
                            <c' bf'>4
                        }
                        {
                            <a f'>2
                        }
                    }
                    {
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 5/8
                            \stopStaff
                            \startStaff
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            <fs d'>2
                        }
                        {
                            <a d'>8
                        }
                        {
                            <fs d'>4 ~
                            <fs d'>4.
                        }
                        {
                            <a f'>2.
                        }
                        {
                            <fs b>8
                        }
                        {
                            <g f'>8 ~
                            <g f'>4
                        }
                        {
                            <fs d'>8
                        }
                        {
                            <aqs fqs'>8 ~
                            <aqs fqs'>4
                        }
                        {
                            <a g'>4
                        }
                    }
                    {
                        {
                            r8
                        }
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    {
                        {
                            R1 * 1/2
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <c' af'>2
                        }
                        {
                            <a f'>8
                        }
                        {
                            <c' af'>2
                        }
                        {
                            <a d'>8
                        }
                        {
                            <g f'>4
                            <g f'>4.
                        }
                        {
                            <a f'>4
                        }
                        {
                            <c' bf'>4
                        }
                        {
                            <a f'>4
                        }
                        {
                            <c' af'>4.
                        }
                        {
                            <a f'>4
                        }
                    }
                    {
                        {
                            s4.
                        }
                        {
                            R1 * 3/8
                        }
                    }
                    {
                        {
                            <a f'>2 \glissando
                        }
                        {
                            <c' f'>2
                            <
                                \parenthesize
                                c'
                                \parenthesize
                                f'
                            >8 \glissando
                        }
                        {
                            <af e'>4.
                        }
                        {
                            <c' af'>2
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <aqf dqf'>2 \glissando
                        }
                        {
                            <g ef'>8 \glissando
                        }
                        {
                            <c' f'>2
                        }
                        {
                            <a d'>8
                        }
                        {
                            <c' bf'>8
                            <c' bf'>4
                        }
                        {
                            <a f'>2
                        }
                    }
                    {
                        {
                            R1 * 5/8
                        }
                        {
                            s8
                        }
                    }
                    {
                        {
                            <fs d'>2 \glissando
                        }
                        {
                            <a d'>8 \glissando
                        }
                        {
                            <fs d'>4
                            <fs d'>4.
                        }
                        {
                            <a f'>2. \glissando
                        }
                        {
                            <fs b>8 \glissando
                        }
                        {
                            <g f'>8
                            <
                                \parenthesize
                                g
                                \parenthesize
                                f'
                            >4 \glissando
                        }
                        {
                            <fs d'>8 \glissando
                        }
                        {
                            <aqs fqs'>8
                            <
                                \parenthesize
                                aqs
                                \parenthesize
                                fqs'
                            >4
                        }
                        {
                            <a g'>4
                        }
                    }
                    {
                        {
                            s8
                        }
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
                        {
                            c'8
                        }
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            c'4. \stopTextSpan
                        }
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                S.T.
                                }
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
                            c'8 \startTextSpan
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
                            c'8 \startTextSpan
                            c'8
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'8
                            c'8
                            c'8
                            c'8
                            c'8
                            c'8
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'16
                            c'16 \stopTextSpan
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
                            c'8 \stopTextSpan \startTextSpan
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4
                        }
                        {
                            c'4
                        }
                        {
                            c'8. \stopTextSpan
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
                            s4
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
                }
                \context BowContactVoice = "Viola 2 RH Bow Contact Voice" {
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
                            c'4. ^\upbow \glissando
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
                            c'16 ^\downbow \glissando
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
                            s4
                        }
                    }
                    {
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
                            c'4 ^\downbow \glissando
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
                            c'16 \glissando
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
                            c'2 _\accent \glissando
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
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
                            c'8 \glissando
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
                            c'4 _\accent \glissando
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
                            c'8 \glissando
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
                            c'8 ^\downbow _\accent \glissando
                            \once \override NoteHead.Y-offset = -1.5
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            8
                                }
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
                            c'8 \glissando
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
                            c'4 ^\upbow \glissando
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
                            c'16 ^\upbow _\accent \glissando
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
                            s8
                            s4
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
                            c'8 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                            \once \override NoteHead.Y-offset = -2.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            0
                                            1
                                }
                            c'8. ^\downbow \glissando
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
                        {
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            s4
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
                            \once \override NoteHead.style = #'cross
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
                            \once \override NoteHead.style = #'cross
                            c'16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
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
                            c'8
                        }
                        \times 2/3 {
                            c'4
                            c'4
                            c'4
                        }
                        {
                            c'4.
                        }
                        {
                            c'4.
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
                            r4
                        }
                    }
                    {
                        {
                            c'8
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
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            c'8 ]
                        }
                        {
                            c'4
                            c'4
                        }
                        {
                            c'8
                        }
                        {
                            c'4
                            c'4 :32
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'8 :64 [
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
                            c'8 ]
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
                            r4
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
                            c'8
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            c'4 :32
                        }
                        {
                            c'4 :32
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
                        {
                            c'16
                        }
                    }
                    {
                        {
                            r16
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
                            r16
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
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
                            c'8 \p \>
                        }
                        \times 2/3 {
                            c'4 \ppp \<
                            c'4
                            c'4
                        }
                        {
                            c'4. \p \>
                        }
                        {
                            c'4. \ppp \<
                        }
                        {
                            c'16
                            c'16 \f
                        }
                    }
                    {
                        {
                            s8
                            s4
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \ppp \<
                            c'4
                        }
                        {
                            c'2 \f \>
                            c'16
                            c'16 \p
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'8 \p \>
                        }
                        {
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
                        \times 2/3 {
                            c'8 \f \>
                            c'8
                            c'8
                        }
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/6 {
                            c'8 \ppp \<
                            c'8
                            c'8
                            c'8
                            c'8
                            c'8
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
                            s4
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
                            c'8 \ppp \<
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'4 \ppp \<
                        }
                        {
                            c'8. \f \>
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
                            c'16 \mf
                        }
                    }
                    {
                        {
                            s16
                        }
                        {
                            s4
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
                            c'16 \mf
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
                            c'16 \mf
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
                            c'16 \mf
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                }
            >>
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \clef "alto"
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    {
                        {
                            <a f'>2
                        }
                        {
                            <c' f'>2 ~
                            <c' f'>8
                        }
                        {
                            <aqs dqs'>2 ~
                            <aqs dqs'>8
                        }
                        {
                            <a d'>2.
                        }
                        {
                            <cqs' aqf'>8
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
                            <c' f'>2 ~
                            <c' f'>8
                        }
                        {
                            <gqf bqs>2 ~
                            <gqf bqs>8
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            <a f'>8
                        }
                        {
                            <f bf>2
                        }
                        {
                            <g c'>2 ~
                            <g c'>8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            <c' bf'>4
                        }
                        {
                            <a f'>2
                        }
                        {
                            <cqs' aqf'>8
                        }
                        {
                            <c' bf'>2
                        }
                        {
                            <af e'>2 ~
                            <af e'>8
                        }
                        {
                            <af cs'>2
                        }
                        {
                            <f cs'>8
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
                            <gqf dqs'>2
                        }
                        {
                            <fs e'>2 ~
                            <fs e'>8
                        }
                        {
                            <a f'>4. ~
                            <a f'>4
                        }
                        {
                            <gqf bqs>8
                        }
                        {
                            <fs b>2
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
                            <cs' b' g'' ef'''>16
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            r4
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
                            r4
                        }
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
                        {
                            r4
                        }
                    }
                    {
                        {
                            <c' bf' fs'' d'''>16
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    {
                        {
                            <a f'>2
                        }
                        {
                            <c' f'>2
                            <c' f'>8
                        }
                        {
                            <aqs dqs'>2
                            <aqs dqs'>8
                        }
                        {
                            <a d'>2.
                        }
                        {
                            <cqs' aqf'>8
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
                            <c' f'>2
                            <c' f'>8
                        }
                        {
                            <gqf bqs>2
                            <gqf bqs>8
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            <a f'>8
                        }
                        {
                            <f bf>2
                        }
                        {
                            <g c'>2
                            <g c'>8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <c' bf'>4
                        }
                        {
                            <a f'>2
                        }
                        {
                            <cqs' aqf'>8
                        }
                        {
                            <c' bf'>2
                        }
                        {
                            <af e'>2
                            <af e'>8
                        }
                        {
                            <af cs'>2
                        }
                        {
                            <f cs'>8
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
                            <gqf dqs'>2 \glissando
                        }
                        {
                            <fs e'>2
                            <
                                \parenthesize
                                fs
                                \parenthesize
                                e'
                            >8
                        }
                        {
                            <a f'>4.
                            <a f'>4
                        }
                        {
                            <gqf bqs>8
                        }
                        {
                            <fs b>2
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
                            <c' bf' fs'' d'''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                }
            >>
        >>
    >>
