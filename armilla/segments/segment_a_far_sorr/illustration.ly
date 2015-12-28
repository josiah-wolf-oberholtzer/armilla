\version "2.19.32"
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
                \time 3/8
                s1 * 9/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 6/8
                s1 * 3/4
            }
            {
                \time 3/8
                s1 * 9/8
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
                        {
                            c'2 ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            D.P.
                                }
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 3
                        {
                            R1 * 3/8
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 4
                        {
                            c'4. ^ \markup {
                                \vcenter
                                    \italic
                                        \caps
                                            Ord.
                                }
                        }
                        % [Viola 1 RH String Contact Voice] Measure 5
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 1 RH String Contact Voice] Measure 6
                        {
                            R1 * 1/2
                        }
                        % [Viola 1 RH String Contact Voice] Measure 7
                        {
                            R1 * 3/4
                        }
                    }
                    {
                        % [Viola 1 RH String Contact Voice] Measure 8
                        {
                            c'4. ^ \markup {
                                \vcenter
                                    \italic
                                        \parenthesize
                                            \caps
                                                Ord.
                                }
                        }
                        % [Viola 1 RH String Contact Voice] Measure 9
                        {
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 1 RH String Contact Voice] Measure 10
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
                        % [Viola 1 RH Bow Contact Voice] Measure 3
                        {
                            R1 * 3/8
                        }
                    }
                    {
                        % [Viola 1 RH Bow Contact Voice] Measure 4
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
                        % [Viola 1 RH Bow Contact Voice] Measure 5
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
                            c'8. \glissando [
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
                        {
                            s8
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 6
                        {
                            R1 * 1/2
                        }
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
                            c'8. \glissando [
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
                        {
                            s8
                        }
                        % [Viola 1 RH Bow Contact Voice] Measure 10
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
                        {
                            c'2
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 3
                        {
                            R1 * 3/8
                        }
                    }
                    {
                        % [Viola 1 RH Beaming Voice] Measure 4
                        {
                            c'4.
                        }
                        % [Viola 1 RH Beaming Voice] Measure 5
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
                        % [Viola 1 RH Beaming Voice] Measure 6
                        {
                            R1 * 1/2
                        }
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
                            c'8. [
                            \set stemLeftBeamCount = 2
                            c'16 ]
                        }
                    }
                    {
                        {
                            r8
                        }
                        % [Viola 1 RH Beaming Voice] Measure 10
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
                        {
                            c'2 \p \>
                            c'16 [
                            \set stemLeftBeamCount = 2
                            c'16 \ppp ]
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 3
                        {
                            R1 * 3/8
                        }
                    }
                    {
                        % [Viola 1 RH Dynamics Voice] Measure 4
                        {
                            c'4. \p \>
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 5
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
                        % [Viola 1 RH Dynamics Voice] Measure 6
                        {
                            R1 * 1/2
                        }
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
                            c'8. \ppp \< [
                            \set stemLeftBeamCount = 2
                            c'16 \p ]
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 1 RH Dynamics Voice] Measure 10
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
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 3
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
                        % [Viola 1 LH Pitches Voice] Measure 4
                        {
                            <a f'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 5
                        {
                            <c' f'>4
                        }
                    }
                    {
                        {
                            r8
                        }
                        % [Viola 1 LH Pitches Voice] Measure 6
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 1/2
                        }
                        % [Viola 1 LH Pitches Voice] Measure 7
                        {
                            R1 * 3/4
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        % [Viola 1 LH Pitches Voice] Measure 8
                        {
                            <fs d'>4.
                        }
                        % [Viola 1 LH Pitches Voice] Measure 9
                        {
                            <a f'>4
                        }
                    }
                    {
                        {
                            r8
                        }
                        % [Viola 1 LH Pitches Voice] Measure 10
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
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 3
                        {
                            R1 * 3/8
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 4
                        {
                            <a f'>4.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 5
                        {
                            <c' f'>4
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 1 LH Spanner Voice] Measure 6
                        {
                            R1 * 1/2
                        }
                        % [Viola 1 LH Spanner Voice] Measure 7
                        {
                            R1 * 3/4
                        }
                    }
                    {
                        % [Viola 1 LH Spanner Voice] Measure 8
                        {
                            <fs d'>4.
                        }
                        % [Viola 1 LH Spanner Voice] Measure 9
                        {
                            <a f'>4
                        }
                    }
                    {
                        {
                            s8
                        }
                        % [Viola 1 LH Spanner Voice] Measure 10
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
                        % [Viola 2 RH String Contact Voice] Measure 2
                        {
                            c'4
                        }
                        {
                            c'4.
                        }
                        % [Viola 2 RH String Contact Voice] Measure 3
                        {
                            c'16 [
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
                        % [Viola 2 RH String Contact Voice] Measure 4
                        {
                            c'4.
                        }
                        % [Viola 2 RH String Contact Voice] Measure 5
                        {
                            c'4.
                        }
                        % [Viola 2 RH String Contact Voice] Measure 6
                        {
                            c'4.. \stopTextSpan
                            c'16
                        }
                    }
                    {
                        % [Viola 2 RH String Contact Voice] Measure 7
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
                                        \caps
                                            Ord.
                                }
                            c'4
                        }
                        % [Viola 2 RH String Contact Voice] Measure 8
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
                            s16
                        }
                        % [Viola 2 RH String Contact Voice] Measure 9
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
                        % [Viola 2 RH String Contact Voice] Measure 10
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
                            c'16 \glissando [
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
                        % [Viola 2 RH Bow Contact Voice] Measure 4
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
                        % [Viola 2 RH Bow Contact Voice] Measure 5
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
                        % [Viola 2 RH Bow Contact Voice] Measure 6
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
                            c'4.. _\accent \glissando
                            \once \override NoteHead.Y-offset = 0.0
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                                \center-align
                                    \vcenter
                                        \fraction
                                            1
                                            2
                                }
                            c'16
                        }
                    }
                    {
                        % [Viola 2 RH Bow Contact Voice] Measure 7
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
                        % [Viola 2 RH Bow Contact Voice] Measure 8
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
                            c'16 \glissando [
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
                        % [Viola 2 RH Bow Contact Voice] Measure 9
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
                        % [Viola 2 RH Bow Contact Voice] Measure 10
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
                        % [Viola 2 RH Beaming Voice] Measure 4
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 5
                        {
                            c'4.
                        }
                        % [Viola 2 RH Beaming Voice] Measure 6
                        {
                            c'4..
                            c'16
                        }
                    }
                    {
                        % [Viola 2 RH Beaming Voice] Measure 7
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
                        % [Viola 2 RH Beaming Voice] Measure 8
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
                            r16
                        }
                        % [Viola 2 RH Beaming Voice] Measure 9
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
                        % [Viola 2 RH Beaming Voice] Measure 10
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
                        {
                            c'8 \p \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 4
                        {
                            c'4. \ppp \<
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 5
                        {
                            c'4. \p \>
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 6
                        {
                            c'4.. \ppp \<
                            c'16 \p
                        }
                    }
                    {
                        % [Viola 2 RH Dynamics Voice] Measure 7
                        {
                            s8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 5/4 {
                            c'4 \p \>
                            c'4
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 8
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
                            s16
                        }
                        % [Viola 2 RH Dynamics Voice] Measure 9
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
                        % [Viola 2 RH Dynamics Voice] Measure 10
                        {
                            c'16 \mf
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
                            <fs d'>8
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            <aqs dqs'>8
                        }
                        % [Viola 2 LH Pitches Voice] Measure 4
                        {
                            <f df'>4.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 5
                        {
                            <c' f'>4.
                        }
                        % [Viola 2 LH Pitches Voice] Measure 6
                        {
                            <a d'>2
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 7
                        {
                            r8
                        }
                    }
                    {
                        {
                            <a f'>4
                            <a f'>4 \repeatTie
                        }
                        {
                            <fs b>8
                        }
                        % [Viola 2 LH Pitches Voice] Measure 8
                        {
                            <a f'>8
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
                            r16
                        }
                        % [Viola 2 LH Pitches Voice] Measure 9
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
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Viola 2 LH Pitches Voice] Measure 10
                        {
                            <fs e' c'' gs''>16
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
                            <fs d'>8
                        }
                    }
                    {
                        {
                            s8
                        }
                    }
                    {
                        {
                            <aqs dqs'>8
                        }
                        % [Viola 2 LH Spanner Voice] Measure 4
                        {
                            <f df'>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 5
                        {
                            <c' f'>4.
                        }
                        % [Viola 2 LH Spanner Voice] Measure 6
                        {
                            <a d'>2
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 7
                        {
                            s8
                        }
                    }
                    {
                        {
                            <a f'>4
                            <a f'>4
                        }
                        {
                            <fs b>8
                        }
                        % [Viola 2 LH Spanner Voice] Measure 8
                        {
                            <a f'>8
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
                            s16
                        }
                        % [Viola 2 LH Spanner Voice] Measure 9
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
                        }
                    }
                    {
                        {
                            <f ef' b' g''>16
                        }
                    }
                    {
                        {
                            s16
                        }
                    }
                    {
                        % [Viola 2 LH Spanner Voice] Measure 10
                        {
                            <fs e' c'' gs''>16
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
