all:
	latexmk -pdf -pdflatex='lualatex -halt-on-error %O %S'

watch:
	$(MAKE) all
	while true; do \
		inotifywait -q -e modify *.tex *.bib ; \
		$(MAKE) all ; \
	done
