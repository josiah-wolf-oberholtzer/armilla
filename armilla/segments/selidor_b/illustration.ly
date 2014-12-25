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
                \tempo 4=48
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
                                B
                        }
                    }
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
                \context BowingPositionVoice = "Viola 1 Bowing Voice" {
                    {
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
                            s4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context BowingBeamingVoice = "Viola 1 Beaming Voice" {
                    \clef "percussion"
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
                            r4
                        }
                        {
                            R1 * 3/8
                        }
                    }
                }
                \context Dynamics = "Viola 1 Dynamics" {
                    {
                        {
                            r8
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
                        \times 2/3 {
                            c'4 \p \>
                            c'4
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
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            c'4 \ppp \<
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
                            r4
                        }
                        {
                            R1 * 3/8
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
                            r8
                        }
                    }
                    {
                        {
                            c'4 \glissando
                            a4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            \afterGrace
                            cqs'4
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
                            c'4 \glissando
                        }
                        {
                            a4. \glissando
                        }
                        {
                            d'2
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            af4 \glissando
                            \afterGrace
                            a4
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
                            \afterGrace
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
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
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            a8
                        }
                        {
                            \parenthesize
                            a4 \glissando
                            \afterGrace
                            aqs4
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
                        }
                        {
                            \set stemLeftBeamCount = 1
                            c'8
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
                \context FingeringSpannerVoice = "Viola 1 Fingering Voice" {
                    \clef "alto"
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            c'4 \glissando
                            a4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            cqs'4
                            c'4 \glissando
                        }
                        {
                            a4. \glissando
                        }
                        {
                            d'2
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        \times 2/3 {
                            af4 \glissando
                            a4
                            c'4
                        }
                        {
                            a8
                        }
                        {
                            \parenthesize
                            a4 \glissando
                            aqs4
                        }
                        {
                            c'8
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
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
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
                            c'2 ^\downbow \glissando
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
                            c'8. ^ \parenthesize \upbow \glissando
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
                }
                \context BowingBeamingVoice = "Viola 2 Beaming Voice" {
                    \clef "percussion"
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
                        {
                            c'4
                            c'4
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
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
                            r8
                        }
                    }
                }
                \context Dynamics = "Viola 2 Dynamics" {
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        {
                            c'2 \ppp \<
                            c'16
                            c'16 \p
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            c'4 \ppp \<
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
                        \times 5/4 {
                            c'4 \ppp \<
                            c'4
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
                            r8
                        }
                    }
                }
            >>
            \repeat volta 2
            \context FingeringStaff = "Viola 2 Fingering Staff" <<
                \context FingeringPitchesVoice = "Viola 2 Fingering Voice" {
                    \clef "alto"
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            a4
                            \afterGrace
                            \parenthesize
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
                            a2 ~
                            \set stemLeftBeamCount = 1
                            \parenthesize
                            a8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            af4 \glissando
                        }
                        {
                            \afterGrace
                            aqs4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    g
                                    \tweak #'style #'harmonic
                                    d'
                                >16
                                <
                                    \parenthesize
                                    \tweak #'font-size #-4
                                    g
                                    \tweak #'style #'harmonic
                                    c'
                                >16
                                \revert Flag #'stroke-style
                                \revert Script #'font-size
                            }
                            \afterGrace
                            g4
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
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            c'8 \glissando
                        }
                        {
                            d'4 \glissando
                            gqs4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            \afterGrace
                            \parenthesize
                            c'4
                            {
                                \override Flag #'stroke-style = #"grace"
                                \override Script #'font-size = #0.5
                                s16
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
                            a4. \glissando
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
                }
                \context FingeringSpannerVoice = "Viola 2 Fingering Voice" {
                    \clef "alto"
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            a4
                            \parenthesize
                            a4
                        }
                        {
                            a2 ~
                            \parenthesize
                            a8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            af4 \glissando
                        }
                        {
                            aqs4
                            g4
                        }
                        {
                            c'8 \glissando
                        }
                        {
                            d'4 \glissando
                            gqs4 \glissando
                        }
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4
                            \parenthesize
                            c'4
                        }
                        {
                            a4. \glissando
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
                }
            >>
        >>
    >>
}