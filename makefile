all0:
	vi lec.Rnw 
	R CMD Sweave --pdf lec.Rnw
	evince lec.pdf

all:
	vi abs.tex 
	pdflatex abs 
	evince abs.pdf

scp:
	R CMD Stangle lec.Rnw
	#scp contest.R st.pdf st.Rnw st.R epebe_01@ifgifiles.uni-muenster.de:WWW/R
	scp lec.pdf lec.Rnw lec.R epebe_01@ifgifiles.uni-muenster.de:WWW/R
