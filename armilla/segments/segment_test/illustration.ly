\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "/Users/josiah/Documents/Scores/armilla/armilla/stylesheets/stylesheet.ily"

\score {
	\context Score = "Armilla Score" <<
		\tag #'time
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\time 5/4
				\tempo 4=72
				\mark \markup {
					\concat
						{
							\override
								#'(box-padding . 0.5)
								\box
									Test
							" "
							\fontsize
								#-3
								" "
						}
					}
				s1 * 5/4
			}
			{
				s1 * 5/4
			}
			{
				\time 2/4
				s1 * 1/2
			}
		}
		\tag #'viola-1
		\context StringPerformerGroup = "Viola 1 Performer Group" \with {
			instrumentName = \markup { Viola 1 }
			shortInstrumentName = \markup { Va. 1 }
		} <<
			\context BowingStaff = "Viola 1 Bowing Staff" {
				\context Voice = "Viola 1 Bowing Voice" {
					\clef "percussion"
					{
						{
							R1 * 5/4
						}
						{
							R1 * 5/4
						}
						{
							R1 * 1/2
							\bar "||"
						}
					}
				}
			}
			\context FingeringStaff = "Viola 1 Fingering Staff" {
				\context Voice = "Viola 1 Fingering Voice" {
					\clef "alto"
					{
						{
							R1 * 5/4
						}
						{
							R1 * 5/4
						}
						{
							R1 * 1/2
							\bar "||"
						}
					}
				}
			}
		>>
		\tag #'viola-2
		\context StringPerformerGroup = "Viola 2 Performer Group" \with {
			instrumentName = \markup { Viola 2 }
			shortInstrumentName = \markup { Va. 2 }
		} <<
			\context BowingStaff = "Viola 2 Bowing Staff" {
				\context Voice = "Viola 2 Bowing Voice" {
					\clef "percussion"
					{
						{
							R1 * 5/4
						}
						{
							R1 * 5/4
						}
						{
							R1 * 1/2
							\bar "||"
						}
					}
				}
			}
			\context FingeringStaff = "Viola 2 Fingering Staff" {
				\context Voice = "Viola 2 Fingering Voice" {
					\clef "alto"
					{
						{
							R1 * 5/4
						}
						{
							R1 * 5/4
						}
						{
							R1 * 1/2
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}