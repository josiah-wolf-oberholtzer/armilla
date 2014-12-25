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
                \time 2/4
                \tempo 4=72
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    \concat
                                        {
                                            \vstrut
                                            Q
                                        }
                            " "
                            \fontsize
                                #-3
                                "Notation Test"
                        }
                    }
                s1 * 1/2
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
                \time 2/4
                s1 * 1/2
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
            \repeat volta 2
            \context BowingStaff = "Viola 1 Bowing Staff" <<
                \context BowPositionVoice = "Viola 1 RH Position Voice" {
                    \clef "percussion"
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'dotted-line
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
                            \once \override Glissando.style = #'dotted-line
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
                        \times 2/3 {
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
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\downbow \glissando
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
                            c'16 ^\downbow \glissando
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
                            s4
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'dotted-line
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
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
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
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
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
                        }
                        \times 2/3 {
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
                            c'8 ^\downbow \glissando
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
                            R1 * 3/8
                        }
                    }
                }
                \context BowBeamingVoice = "Viola 1 RH Beaming Voice" {
                    \clef "percussion"
                    {
                        {
                            r8
                        }
                    }
                    {
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
                    }
                    {
                        {
                            c'8 [
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            c'8 :64 ]
                        }
                        \times 2/3 {
                            c'4
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
                            c'8 [
                        }
                        {
                            \set stemLeftBeamCount = 1
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
                    }
                    {
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16 :128
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16 :128
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
                        \times 2/3 {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            c'8 :64 ]
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
                            R1 * 3/8
                        }
                    }
                }
                \context Dynamics = "Viola 1 RH Dynamics Voice" {
                    \clef "percussion"
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #flared-hairpin
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
                            c'4. \p \<
                        }
                        {
                            \once \override Hairpin.stencil = #flared-hairpin
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
                            c'8 \pp \<
                            c'8
                            c'8
                        }
                        \times 2/3 {
                            c'4 \p \<
                            c'4
                            c'4
                        }
                        {
                            c'16
                            c'16 \f
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override Hairpin.stencil = #flared-hairpin
                            c'8 \mp \>
                        }
                        {
                            c'16
                            c'16 \pp
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'16 \p \<
                            c'16
                            c'16
                            c'16
                            c'16
                            c'16
                        }
                        \times 2/3 {
                            \once \override Hairpin.stencil = #flared-hairpin
                            c'8 \mp \>
                            c'8
                            c'8
                        }
                        {
                            c'8 \pp \<
                            c'8
                            c'8
                            c'8
                        }
                        {
                            c'4 \p \<
                            c'16
                            c'16 \f
                        }
                    }
                    {
                        {
                            R1 * 3/8
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
                            r8
                        }
                    }
                    {
                        {
                            c'4 \startTrillSpan
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            a4 \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            bqs8 \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            gf4 \startTrillSpan
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            a4. \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            c'4 \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            \afterGrace
                            a4 \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    g'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            c'8 \startTrillSpan
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            bqs8 [ \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            \set stemLeftBeamCount = 1
                            gf8 ] \startTrillSpan
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \afterGrace
                            b4. \startTrillSpan
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
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            c'8 \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            a4. \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            \afterGrace
                            c'4 \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    gf
                                    \tweak #'style #'harmonic
                                    cf'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            gf4. \startTrillSpan
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 1 LH Spanner Voice" {
                    \clef "alto"
                    {
                        {
                            s8
                        }
                    }
                    {
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
                            a4 \glissando
                        }
                        {
                            bqs8 \glissando
                        }
                        {
                            gf4
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            a4. \glissando
                        }
                        {
                            c'4 \glissando
                        }
                        {
                            a4
                        }
                        {
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
                            bqs8 \glissando
                        }
                        {
                            gf8
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            b4.
                        }
                        {
                            c'8 \glissando
                        }
                        {
                            a4. \glissando
                        }
                        {
                            c'4
                        }
                        {
                            gf4.
                        }
                    }
                    {
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
            \repeat volta 2
            \context BowingStaff = "Viola 2 Bowing Staff" <<
                \context BowPositionVoice = "Viola 2 RH Position Voice" {
                    \clef "percussion"
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
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
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
                            c'8 ^\downbow \glissando
                        }
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
                            c'2 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
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
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        \times 4/5 {
                            \once \override Glissando.style = #'dotted-line
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
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
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
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
                            c'16 ^\downbow \glissando
                        }
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
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
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
                            c'16 ^\downbow \glissando
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
                            c'16 ^\downbow \glissando
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
                                            5
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
                            c'16 ^\downbow \glissando
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
                            c'16 ^\upbow \glissando
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
                            \once \override NoteHead.Y-offset = 1.2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            4
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
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            \once \override Glissando.style = #'dotted-line
                            \once \override NoteHead.Y-offset = 0.4
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            3
                                            5
                                }
                            c'8. ^\downbow \glissando
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
                }
                \context BowBeamingVoice = "Viola 2 RH Beaming Voice" {
                    \clef "percussion"
                    {
                        {
                            c'4.
                        }
                        {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            c'16
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                        }
                        {
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 :64
                        }
                        {
                            c'8 ]
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
                        \times 4/5 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16 :128
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16 :128
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            c'16 ]
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
                    }
                    {
                        {
                            c'4.
                        }
                        \times 2/3 {
                            c'16 [
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            c'16
                            c'16 :128 ]
                        }
                        {
                            c'4. :32
                        }
                        {
                            c'16 :128 [
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
                            c'16 :128 [
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
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                }
                \context Dynamics = "Viola 2 RH Dynamics Voice" {
                    \clef "percussion"
                    {
                        {
                            c'4. \f \>
                        }
                        {
                            c'16 \p \<
                            c'16
                        }
                        {
                            \once \override Hairpin.stencil = #flared-hairpin
                            c'8 \mp \>
                        }
                        {
                            c'8 \pp \<
                            c'8
                        }
                        {
                            c'8 \p \<
                        }
                        {
                            \once \override Hairpin.stencil = #flared-hairpin
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
                        \times 4/5 {
                            \once \override Hairpin.stencil = #flared-hairpin
                            c'16 \p \<
                            c'16
                            c'16
                            c'16
                            c'16
                        }
                        {
                            c'4. \f \>
                        }
                        {
                            c'8. \p \<
                            c'16 \mp
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4. \pp \<
                        }
                        \times 2/3 {
                            \once \override Hairpin.stencil = #flared-hairpin
                            c'16 \p \<
                            c'16
                            c'16
                        }
                        {
                            c'4. \f \>
                        }
                        {
                            c'16 \p \<
                            c'16
                            c'16
                            c'16
                        }
                        {
                            \once \override Hairpin.stencil = #flared-hairpin
                            c'4 \mp \>
                            c'16
                            c'16 \pp
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'8. \mp \>
                            c'16 \pp
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \context FingeringPitchesVoice = "Viola 2 LH Pitches Voice" {
                    \clef "alto"
                    {
                        {
                            \afterGrace
                            a4. \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    g'
                                >16
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
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            c'8 [ \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            a8 ] \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            \afterGrace
                            c'4 \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    af
                                    \tweak #'style #'harmonic
                                    ef'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            \afterGrace
                            af8 \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    b
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            b2 ~ \startTrillSpan
                            \parenthesize
                            b8
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \afterGrace
                            c'4 \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    bqs
                                    \tweak #'style #'harmonic
                                    eqs'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    bqs
                                    \tweak #'style #'harmonic
                                    dtqs'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            bqs4. \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            af4 \startTrillSpan
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \afterGrace
                            a4. \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    c'
                                    \tweak #'style #'harmonic
                                    e'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            c'4 \glissando \startTrillSpan
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            \afterGrace
                            a4 \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    bqs
                                    \tweak #'style #'harmonic
                                    ftqs'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    bqs
                                    \tweak #'style #'harmonic
                                    eqs'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            \afterGrace
                            bqs4 \startTrillSpan
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    af
                                    \tweak #'style #'harmonic
                                    c'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    af
                                    \tweak #'style #'harmonic
                                    ef'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            <> \stopTrillSpan
                        }
                        {
                            \once \override TrillSpanner.bound-details.left.text = \markup {
                                \null
                                }
                            af4. \startTrillSpan
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            b4 \stopTrillSpan \startTrillSpan
                        }
                    }
                }
                \context FingeringSpannerVoice = "Viola 2 LH Spanner Voice" {
                    \clef "alto"
                    {
                        {
                            a4.
                        }
                        {
                            c'8 \glissando
                        }
                        {
                            a8 \glissando
                        }
                        {
                            c'4
                        }
                        {
                            af8
                        }
                        {
                            b2
                            \parenthesize
                            b8
                        }
                    }
                    {
                        {
                            s4
                        }
                    }
                    {
                        {
                            c'4
                        }
                        {
                            bqs4. \glissando
                        }
                        {
                            af4
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            a4.
                        }
                        {
                            c'4 \glissando
                        }
                        {
                            a4
                            bqs4
                        }
                        {
                            af4.
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            b4
                        }
                    }
                }
            >>
        >>
    >>
}