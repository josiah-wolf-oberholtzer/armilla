% 2015-12-27 22:58

\version "2.19.32"
\language "english"

\header {}

\layout {}

\paper {}

\score {
    \new Score <<
        \new RhythmicStaff {
            {
                \time 2/4
                s1 * 1/2
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
                \time 4/8
                s1 * 1/2
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 6/8
                s1 * 3/4
            }
        }
    >>
}