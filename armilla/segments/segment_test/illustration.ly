\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "/Users/josiah/Documents/Scores/armilla/armilla/stylesheets/stylesheet.ily"

\score {
	\context Score = "Armilla Score" <<
		\tag #'time
		\context TimeSignatureContext = "TimeSignatureContext" {
			{
				\time 3/8
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
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				\time 7/8
				s1 * 7/8
			}
			{
				\time 5/8
				s1 * 5/8
			}
			{
				\time 4/4
				s1 * 1
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				s1 * 3/8
			}
			{
				\time 4/4
				s1 * 1
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
				\time 5/4
				s1 * 5/4
			}
			{
				\time 3/8
				s1 * 3/8
			}
			{
				s1 * 3/8
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
				s1 * 3/8
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
							r8
						}
					}
					{
						{
							c'4
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
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
					{
						{
							c'8 ~
							c'4
						}
						{
							c'2 ~
							\set stemLeftBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'8 ~ [
							\set stemLeftBeamCount = 1
							c'8 ]
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
							c'8 ~
							c'4
						}
						{
							c'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							c'4.
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'2
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
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
					{
						{
							c'8 ~
							c'4
						}
						{
							c'4
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~ ]
							c'2
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ]
						}
						{
							c'4
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 1
							c'8
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
							\set stemLeftBeamCount = 1
							c'8
						}
					}
					{
						{
							r4
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
							r8
						}
					}
					{
						{
							c'4
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
							c'4.
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'8 ~
							c'4
						}
						{
							c'4
						}
						{
							c'4.
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'8 ~ [
							\set stemLeftBeamCount = 1
							c'8 ]
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
							c'8 ~
							c'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							c'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							c'4
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'2
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
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
					{
						{
							c'8 ~
							c'4
						}
						{
							c'4
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~ ]
							c'4
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
							c'4.
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 1
							c'8 ]
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
							\set stemLeftBeamCount = 1
							c'8
						}
					}
					{
						{
							r4
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
							c'4
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
							c'4
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
							c'8 ~
							c'4
						}
						{
							c'2 ~
							\set stemLeftBeamCount = 1
							c'8
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'8 ~ [
							\set stemLeftBeamCount = 1
							c'8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'2
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							c'4
						}
						{
							c'4
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							c'4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							c'2
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
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
					{
						{
							c'8 ~
							c'4
						}
						{
							c'4
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~ ]
							c'2
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
							c'4.
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
					{
						{
							c'8
						}
						{
							c'4.
						}
					}
					{
						{
							R1 * 3/8
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
							c'4
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
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							c'4
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
							c'8 ~
							c'4
						}
						{
							c'4
						}
						{
							c'4.
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'8 ~ [
							\set stemLeftBeamCount = 1
							c'8 ]
						}
					}
					{
						{
							r8
						}
					}
					{
						{
							c'2
						}
						{
							c'4.
						}
						{
							c'4.
						}
						{
							c'4
						}
					}
					{
						{
							r4
						}
					}
					{
						{
							c'2
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
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
					{
						{
							c'8 ~
							c'4
						}
						{
							c'4
						}
						{
							c'4 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 [
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8
						}
						{
							\set stemLeftBeamCount = 1
							\set stemRightBeamCount = 1
							c'8 ~ ]
							c'4
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
							c'4.
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
					{
						{
							c'8
						}
						{
							c'4.
						}
					}
					{
						{
							R1 * 3/8
							\bar "||"
						}
					}
				}
			}
		>>
	>>
}