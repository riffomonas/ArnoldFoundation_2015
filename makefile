Repro_ArnoldFound_2015.pdf : Repro_ArnoldFound_2015.Rmd header.tex references.bib
	R -e "library('rmarkdown'); render('Repro_ArnoldFound_2015.Rmd')"
