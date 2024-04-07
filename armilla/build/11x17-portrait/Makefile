all:
	make clean
	make music
	make latex

clean:
	rm -Rif *.aux
	rm -Rif *.log

latex:
	xelatex armilla-11x17-portrait-preface.tex
	xelatex armilla-11x17-portrait-front-cover.tex && xelatex armilla-11x17-portrait-front-cover.tex
	xelatex armilla-11x17-portrait-back-cover.tex && xelatex armilla-11x17-portrait-back-cover.tex
	xelatex armilla-11x17-portrait-score.tex

music:
	lilypond armilla-11x17-portrait-music.ly

open:
	open armilla-11x17-portrait-score.pdf

stage:
	cp *-score.pdf ../../distribution
	cp *-preface.pdf ../../distribution
