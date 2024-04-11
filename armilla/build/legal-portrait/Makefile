all:
	make clean
	make music
	make latex

clean:
	rm -Rif *.aux
	rm -Rif *.log

latex:
	xelatex armilla-legal-portrait-preface.tex
	xelatex armilla-legal-portrait-front-cover.tex && xelatex armilla-legal-portrait-front-cover.tex
	xelatex armilla-legal-portrait-back-cover.tex && xelatex armilla-legal-portrait-back-cover.tex
	xelatex armilla-legal-portrait-score.tex

music:
	lilypond armilla-legal-portrait-music.ly

open:
	open armilla-legal-portrait-score.pdf

stage:
	cp *-score.pdf ../../distribution
	cp *-preface.pdf ../../distribution
