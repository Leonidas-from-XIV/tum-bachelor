tum.pdf:
	gs -sDEVICE=pdfwrite -sOutputFile=tum_full.pdf -dBATCH -dNOPAUSE uni.tum.ps
	pdfcrop --luatex tum_full.pdf tum.pdf
	rm tum_full.pdf

in_tum.pdf:
	gs -sDEVICE=pdfwrite -sOutputFile=in_tum_full.pdf -dBATCH -dNOPAUSE in.tum.ps
	pdfcrop --luatex in_tum_full.pdf in_tum.pdf
	rm in_tum_full.pdf

logos: in_tum.pdf tum.pdf

all: logos
	latexmk bachelor.tex

watch:
	$(MAKE) all
	while true; do \
		inotifywait -q -e modify *.tex *.bib *.c *.py *.ps ; \
		$(MAKE) all ; \
	done
