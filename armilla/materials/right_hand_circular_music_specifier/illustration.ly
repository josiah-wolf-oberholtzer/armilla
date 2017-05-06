\version "2.19.44"
\language "english"

\include "/Users/joberholtzer/Development/consort/consort/stylesheets/stylesheet.ily"

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
                            c'4. ^\downbow \p \glissando \> ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                        }
                        % [Violin 1 Voice] Measure 2
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
                                                    S.P.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'8. ^\upbow \ppp \glissando \< [ \startTextSpan
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
                            c'16 \p ] \stopTextSpan
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
                            c'16 ^\upbow \ppp \glissando [ ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            M.S.P
                                }
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
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 4
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
                            c'4 ^\downbow \p \glissando \> \startTextSpan
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
                            c'4. ^\downbow \ppp \stopTextSpan \glissando \< \startTextSpan
                        }
                        % [Violin 1 Voice] Measure 5
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
                            c'8. ^\upbow \p \glissando \> [
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
                            c'16 \ppp ] \stopTextSpan
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
                            c'8 \parenthesizeDynamic \ppp \glissando \< ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Ord.
                                }
                        }
                        % [Violin 1 Voice] Measure 7
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
                            c'8. ^ \parenthesize \downbow \p \glissando \> [ \startTextSpan
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
                            c'16 \ppp ] \stopTextSpan
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
                            c'8 ^\upbow \p \glissando \> \startTextSpan
                        }
                        % [Violin 2 Voice] Measure 2
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
                            c'4 \ppp \stopTextSpan \glissando \<
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
                            c'8 ^ \parenthesize \downbow \p \glissando \> \startTextSpan
                        }
                        % [Violin 2 Voice] Measure 3
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
                            c'8. ^\upbow \ppp \stopTextSpan \glissando \< [
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
                            c'16 \p ]
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
                                                    S.P.
                                                \hspace
                                                    #1.5
                                            }
                                }
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'8. ^\downbow \ppp \glissando \< [ \startTextSpan
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
                            c'16 \p ] \stopTextSpan
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
                            c'8 \glissando \> ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
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
                            c'4 ^ \parenthesize \downbow \ppp \glissando \< \startTextSpan
                        }
                        % [Violin 2 Voice] Measure 5
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
                            c'4 ^\upbow \p \stopTextSpan \glissando \> \startTextSpan
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
                            c'8 \ppp \stopTextSpan \glissando \<
                        }
                        % [Violin 2 Voice] Measure 6
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
                            c'4. ^ \parenthesize \downbow \p \glissando \> \startTextSpan
                        }
                        % [Violin 2 Voice] Measure 7
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
                            c'16 \ppp ] \stopTextSpan
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
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 ^\upbow \ppp \glissando \< \startTextSpan
                        }
                        % [Viola Voice] Measure 2
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
                            c'8 \p \glissando \>
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
                            c'8 ^ \parenthesize \downbow \ppp \stopTextSpan \glissando \< \startTextSpan
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
                            c'8 ^\upbow \p \stopTextSpan \glissando \> \startTextSpan
                        }
                        % [Viola Voice] Measure 3
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
                            c'16 \glissando [
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
                            c'16 \ppp ] \stopTextSpan
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
                            c'4. ^\downbow \p \glissando \> \startTextSpan
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
                            \once \override TextSpanner.bound-details.right.padding = 5
                            \once \override TextSpanner.bound-details.right.stencil-align-dir-y = #center
                            \once \override TextSpanner.dash-fraction = 0.25
                            \once \override TextSpanner.dash-period = 1
                            c'4 ^\upbow \ppp \stopTextSpan \glissando \< \startTextSpan
                        }
                        % [Viola Voice] Measure 5
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
                            c'8 \p \glissando \>
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
                            c'4 ^ \parenthesize \downbow \ppp \stopTextSpan \glissando \< \startTextSpan
                        }
                        % [Viola Voice] Measure 6
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
                            c'8. ^\upbow \p \stopTextSpan \glissando \> [ \startTextSpan
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
                            c'16 \ppp ] \stopTextSpan
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
                            c'4. ^\upbow \ppp \glissando \< ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                        }
                        % [Cello Voice] Measure 2
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
                            c'8. ^\downbow \p \glissando \> [ \startTextSpan
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
                            c'16 \ppp ] \stopTextSpan
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
                            c'4. \p \glissando \> \startTextSpan
                        }
                        % [Cello Voice] Measure 4
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
                            c'16 ^ \parenthesize \upbow \ppp \glissando [
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
                            c'16 ] \stopTextSpan
                        }
                    }
                    {
                        {
                            r4
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
                            c'4 ^\downbow \glissando \< \startTextSpan
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
                            c'4 \p \stopTextSpan \glissando \> \startTextSpan
                        }
                        % [Cello Voice] Measure 5
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
                            c'8 ^ \parenthesize \upbow \ppp \stopTextSpan \glissando \<
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
                            c'8. ^\downbow \p \glissando \> [ \startTextSpan
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
                            c'16 \ppp ] \stopTextSpan
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
                            c'16 ^\upbow \p \glissando [ ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                M.S.P
                                }
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