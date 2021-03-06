parenthesizeDynamic =
#(define-event-function (parser location dyn) (ly:event?)
    (make-dynamic-script
        #{ \markup \concat {
            \normal-text \italic \fontsize #2 (
            \pad-x #0.2 #(ly:music-property dyn 'text)
            \normal-text \italic \fontsize #2 )
        }
        #}))

#(define-markup-command (vstrut layout props)
  ()
  #:category other
  "
@cindex creating vertical space in text

Create a box of the same height as the current font."
  (let ((ref-mrkp (interpret-markup layout props "fp")))
    (ly:make-stencil (ly:stencil-expr empty-stencil)
                     empty-interval
                     (ly:stencil-extent ref-mrkp Y))))

afterGraceFraction = #(cons 1023 1024)
#(set-default-paper-size "17x11" 'landscape)
#(set-global-staff-size 11.5)

\paper {
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm
    evenFooterMarkup = \markup \fill-line {
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
        }
        " "
    }
    evenHeaderMarkup = \markup \fill-line { " " }
    oddFooterMarkup = \markup \fill-line {
        " "
        \concat {
            \bold \fontsize #3
            \on-the-fly #print-page-number-check-first
            \fromproperty #'page:page-number-string
        }
    }
    oddHeaderMarkup = \markup \fill-line { " " }
    print-first-page-number = ##f
    print-page-number = ##t
    page-breaking = #ly:optimal-breaking
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    markup-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 12)
        (padding . 0)
        (stretchability . 0)
    )
    system-system-spacing = #'(
        (basic-distance . 12)
        (minimum-distance . 18)
        (padding . 12)
        (stretchability . 100)
    )
    top-markup-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 0)
        (padding . 8)
        (stretchability . 0)
    )
    top-system-spacing = #'(
        (basic-distance . 0)
        (minimum-distance . 10)
        (padding . 0)
        (stretchability . 0)
    )
}

\layout {
    \accidentalStyle forget
    ragged-right = ##t

    %%% TIME SIGNATURE CONTEXT %%%

    \context {
        \name TimeSignatureContext
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Bar_number_engraver
        \consists Mark_engraver
        \consists Metronome_mark_engraver
        \consists Script_engraver
        \consists Text_engraver
        \consists Text_spanner_engraver
        \consists Time_signature_engraver
        \override BarNumber.Y-extent = #'(0 . 0)
        \override BarNumber.Y-offset = 0
        \override BarNumber.extra-offset = #'(-6 . 0)
        \override BarNumber.font-name = "Didot Italic"
        \override BarNumber.font-size = 1
        \override BarNumber.padding = 4
        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.7 ly:text-interface::print)
        \override MetronomeMark.X-extent = #'(0 . 0)
        \override MetronomeMark.Y-extent = #'(0 . 0)
        \override MetronomeMark.break-align-symbols = #'(left-edge)
        \override MetronomeMark.extra-offset = #'(0 . 4)
        \override MetronomeMark.font-size = 3
        \override RehearsalMark.X-extent = #'(0 . 0)
        \override RehearsalMark.X-offset = 6
        \override RehearsalMark.Y-offset = -2.25
        \override RehearsalMark.break-align-symbols = #'(time-signature)
        \override RehearsalMark.break-visibility = #end-of-line-invisible
        \override RehearsalMark.font-name = "Didot"
        \override RehearsalMark.font-size = 8
        \override RehearsalMark.outside-staff-priority = 500
        \override RehearsalMark.self-alignment-X = #center
        \override Script.extra-offset = #'(4 . -9)
        \override Script.font-size = 6
        \override TextScript.font-size = 3
        \override TextScript.outside-staff-priority = 600
        \override TextScript.padding = 6
        \override TextSpanner.bound-details.right.attach-dir = #left
        \override TextSpanner.padding = 6.75
        \override TimeSignature.X-extent = #'(0 . 0)
        \override TimeSignature.break-align-symbol = #'left-edge
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 3
        \override TimeSignature.space-alist.clef = #'(extra-space . 0.5)
        \override TimeSignature.style = #'numbered
        \override VerticalAxisGroup.default-staff-staff-spacing = #'(
            (basic-distance . 0)
            (minimum-distance . 14)
            (padding . 0)
            (stretchability . 0)
        )
        \override VerticalAxisGroup.minimum-Y-extent = #'(-20 . 20)
    }

    %%% DEFAULTS %%%

    \context {
        \Voice
        \remove Forbid_line_break_engraver
    }
    \context {
        \Staff
        \remove Time_signature_engraver
    }

    %%% BOWING %%%

    \context {
        \Voice
        \name StringContactVoice
        \type Engraver_group
        \alias Voice
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override NoteHead.stencil = ##f
        \override Rest.stencil = ##f
        \override Stem.stencil = ##f
        \override TextScript.staff-padding = 7
        \override TextScript.self-alignment-X = #center
        \override TextSpanner.staff-padding = 7
        \override TextSpanner.bound-details.left.attach-dir = 0
        \override TextSpanner.bound-details.right.attach-dir = 0
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }
    \context {
        \Voice
        \name BowContactVoice
        \type Engraver_group
        \alias Voice
        \override Beam.stencil = ##f
        \override Dots.stencil = ##f
        \override Flag.stencil = ##f
        \override NoteHead.extra-offset = #'(0.05 . 0)
        \override Rest.stencil = ##f
        \override Script.staff-padding = 2.5
        \override Stem.stencil = ##f
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }
    \context {
        \Voice
        \name BowBeamingVoice
        \type Engraver_group
        \alias Voice
        \override Beam.direction = #down
        \override Beam.positions = #'(-11 . -11)
        \override Dots.X-offset = -8
        \override Dots.staff-position = -1
        \override Flag.Y-offset = -10
        \override NoteHead.Y-offset = -5
        \override NoteHead.stencil = ##f
        \override Stem.direction = #down
        \override Stem.length = 9
        \override Stem.stem-begin-position = -11
        \override TupletBracket.positions = #'(-13 . -13)
    }
    \context {
        \Dynamics
        \remove Bar_engraver
        \override DynamicLineSpanner.staff-padding = 11.5
        \override DynamicText.self-alignment-X = -1
        \override Hairpin.bound-padding = 1.5
        %\override Hairpin.minimum-length = 5
        \override VerticalAxisGroup.nonstaff-relatedstaff-spacing = #'(
            (basic-distance . 5)
            (padding . 2.5) 
            )
    }
    \context {
        \Staff
        \name BowingStaff
        \type Engraver_group
        \alias Staff
        \accepts BowBeamingVoice
        \accepts BowContactVoice
        \accepts StringContactVoice
        \override Glissando.bound-details.left.padding = 0.75
        \override Glissando.bound-details.right.padding = 0.75
        \override Glissando.thickness = 2
        \override Glissando.zigzag-length = 1.5
        \override Glissando.zigzag-width = 0.75
        \override ParenthesesItem.font-size = 1
        \override ParenthesesItem.padding = 0.1
        \override StaffSymbol.transparent = ##t
    }

    %%% FINGERING %%%

    \context {
        \Voice
        \name FingeringPitchesVoice
        \type Engraver_group
        \alias Voice
        \override Beam.direction = #down
        \override Beam.positions = #'(-9 . -9)
        \override Stem.direction = #down
        % \override Tie.stencil = ##f
        \override Glissando.stencil = ##f
        \override TupletBracket.positions = #'(-11 . -11)
    }
    \context {
        \Voice
        \name FingeringSpannerVoice
        \type Engraver_group
        \alias Voice
        \override Beam.direction = #down
        \override Beam.stencil = ##f
        \override Dots.transparent = ##t
        \override Flag.stencil = ##f
        \override NoteHead.transparent = ##t
        \override Stem.direction = #down
        \override Stem.stencil = ##f
        \override Tie.stencil = ##f
        \override TupletBracket.stencil = ##f
        \override TupletNumber.stencil = ##f
    }
    \context {
        \Staff
        \name FingeringStaff
        \type Engraver_group
        \alias Staff
        \accepts FingeringPitchesVoice
        \accepts FingeringSpannerVoice
        \override Glissando.bound-details.left.padding = 1.5
        \override Glissando.bound-details.right.padding = 1.5
        \override Glissando.thickness = 2
        \override StaffSymbol.color = #(x11-color 'grey50)
    }

    %%% STRING PERFORMER GROUP %%%%

    \context {
        \StaffGroup
        \name StringPerformerGroup
        \type Engraver_group
        \alias StaffGroup
        \accepts BowingStaff
        \accepts FingeringStaff
    }

    %%% SCORE %%%

    \context {
        \Score
        \accepts TimeSignatureContext
        \accepts StringPerformerGroup
        \remove Bar_number_engraver
        \remove Mark_engraver
        \remove Metronome_mark_engraver
        \override BarLine.bar-extent = #'(-2 . 2)
        \override BarLine.hair-thickness = 0.5
        \override BarLine.space-alist = #'(
            (time-signature extra-space . 0.0)
            (custos minimum-space . 0.0) 
            (clef minimum-space . 0.0) 
            (key-signature extra-space . 0.0) 
            (key-cancellation extra-space . 0.0) 
            (first-note fixed-space . 0.0) 
            (next-note semi-fixed-space . 0.0) 
            (right-edge extra-space . 0.0)
            )
        \override Beam.beam-thickness = 0.75
        \override Beam.breakable = ##t
        \override Beam.length-fraction = 1.5
        \override DynamicLineSpanner.add-stem-support = ##t
        \override DynamicLineSpanner.outside-staff-padding = 1
        \override Glissando.after-line-breaking = ##t
        \override Glissando.breakable = ##t
        \override Glissando.thickness = 3
        \override GraceSpacing.common-shortest-duration = #(ly:make-moment 1 8)
        \override NoteCollision.merge-differently-dotted = ##t
        \override NoteColumn.ignore-collision = ##t
        \override OttavaBracket.add-stem-support = ##t
        \override OttavaBracket.padding = 2
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1 64)
        \override SpacingSpanner.strict-grace-spacing = ##f
        \override SpacingSpanner.strict-note-spacing = ##f
        \override SpacingSpanner.uniform-stretching = ##t
        \override Stem.details.beamed-lengths = #'(6)
        \override Stem.details.lengths = #'(6)
        \override Stem.stemlet-length = 1.5
        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5
        \override StemTremolo.style = #'default
        \override SustainPedal.self-alignment-X = #CENTER
        \override SustainPedalLineSpanner.padding = 2
        \override SustainPedalLineSpanner.to-barline = ##t
        \override TextScript.add-stem-support = ##t
        \override TextScript.outside-staff-padding = 1
        \override TextScript.padding = 1
        \override TextScript.staff-padding = 1
        \override TextSpanner.bound-details.right.padding = 2.5
        \override TrillPitchAccidental.avoid-slur = #'ignore
        \override TrillPitchAccidental.layer = 1000
        \override TrillPitchAccidental.whiteout = ##t
        \override TrillPitchHead.layer = 1000
        \override TrillPitchHead.whiteout = ##t
        \override TrillSpanner.bound-details.right.padding = 1
        \override TrillSpanner.outside-staff-padding = 1
        \override TrillSpanner.padding = 1
        \override TupletBracket.avoid-scripts = ##t
        \override TupletBracket.direction = #down
        \override TupletBracket.full-length-to-extent = ##t
        \override TupletBracket.outside-staff-padding = 2
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 1
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 8)
            (minimum-distance . 14)
            (padding . 4)
            (stretchability . 0)
            )
        autoBeaming = ##f
        doubleRepeatType = #":|.|:"
        proportionalNotationDuration = #(ly:make-moment 1 16)
        tupletFullLength = ##t
    }
}
