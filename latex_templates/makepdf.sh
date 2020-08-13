pandoc --pdf-engine=pdflatex --highlight-style tango chap3.md -o chap3.tex --from markdown -V colorlinks -V asmmath -V hyperref -V listings --toc -N -V geometry:"top=2cm, bottom=2cm"

