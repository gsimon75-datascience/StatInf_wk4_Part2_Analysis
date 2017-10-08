TARGETS=Analysis.pdf

all:		$(TARGETS)

.PHONY:		clean
clean:
		rm -f $(TARGETS)

.PHONY:		show
show:		$(TARGETS)
		xpdf $^

%.pdf %.md:	%.Rmd
		# echo 'library(knitr);knit2pdf("$^");' | R --no-save`
		echo 'library(rmarkdown); render("$^", output_format="pdf_document");' | R --no-save

