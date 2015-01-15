#(set-default-paper-size "legal" 'portrait)
#(set-global-staff-size 12)

\paper {
    left-margin = 20\mm
    system-system-spacing = #'(
        (basic-distance . 4)
        (minimum-distance . 6)
        (padding . 4)
        (stretchability . 0)
    )
}

\layout {
    \context {
        \Score
        \override VerticalAxisGroup.staff-staff-spacing = #'(
            (basic-distance . 6)
            (minimum-distance . 4)
            (padding . 6)
            (stretchability . 0)
            )
        proportionalNotationDuration = #(ly:make-moment 1 12)
    }
}
