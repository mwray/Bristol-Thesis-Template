# Bristol Thesis Template

This has been passed down the computer vision lab for eons, I decided to try and clean it up as best as I could (be bothered to) before writing up myself.

## Main Files
* thesis.tex is the main file so to speak which has the inputs for each chapter and appendix.
* chapters/ folder for each chapter to be its individual tex file.
* appendices/ foler for each appendix to be its individual tex file.
* thesisbunf/ folder containing:
    * bunf01a.tex creation of pdf among other commands and use packages.
    * bunf02margins.tex set margins of file.
    * bunf03title.tex creates title page using commands defined in thesis.tex.
    * bunf04prelim.tex creates environments for the frontmatter.
    * bunf04prelimactual.tex actual definition of frontmatter.
    * bunf05refs.tex creates backmatter
* library.bib bibliography file
* doitall - runs through pdflatex and bibtex several times
* makefile - Uses latexmk to compile the thesis.


More instructions in thesis.tex . . .
