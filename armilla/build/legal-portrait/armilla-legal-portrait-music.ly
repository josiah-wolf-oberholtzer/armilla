% Invisible Cities (ii): Armilla (2014) for John Richards and Beth Weisser 

\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)
\include "../../stylesheets/stylesheet.ily"
#(set-default-paper-size "legal" 'portrait)
#(set-global-staff-size 11)

\header {
    composer = \markup {
        \column {
            \override #'(font-name . "Didot")
                \fontsize #3 "Josiah Wolf Oberholtzer (1984)"
            " "
        }
    }
    tagline = \markup { "" }
    title = \markup {
        \column {
            \center-align {
                \override #'(font-name . "Didot Italic")
                    \fontsize #4 {
                        \line { Invisible Cities (ii): }
                    }
                \vspace #0.5
                \override #'(font-name . "Didot")
                    \fontsize #18 {
                        \line { ARMILLA }
                    }
                \vspace #0.5
                \override #'(font-name . "Didot Italic")
                    \fontsize #2 {
                        \line { ( a botanical survey of the uninhabited southern isles ) }
                    }
                \vspace #1
                \override #'(font-name . "Didot Italic")
                    \fontsize #4 {
                        \line { for Elizabeth Weisser and John Pickford Richards }
                        \null
                        \null
                    }
            }
        }
    }
}

\paper {
    indent = 18\mm
    short-indent = 12\mm
    last-bottom-spacing = #'(
        (basic-distance . 10)
        (minimum-distance . 10)
        (padding . 5)
        (stretchability . 0)
        )
    ragged-last-bottom = ##t
}

\score {
    \include "../segments.ily"
}