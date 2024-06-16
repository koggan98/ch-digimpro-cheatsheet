# Cheatsheet digimpro
---------------------

MSE ZAHW 2024

This is a simple markdown cheat sheet with pdf build pipeline to ensure proper printing.

## Printing

https://www.pandoc.org/
Pandoc is used to generate a PDF file out of the markdown
Run the make.sh to generate the PDF with pandoc and latex

Link to build pdf: https://doofmars.github.io/ch-digimpro-cheatsheet/CHEATSHEET.pdf

Commands to build via asciidoc:

```
pandoc -t asciidoc -f markdown CHEATSHEET.md > CHEATSHEET.adoc
docker run --rm --privileged -u $(id -u):$(id -g) -v `pwd`:/documents asciidoctor/docker-asciidoctor asciidoctor-pdf -a pdf-page-layout=landscape -a stem -r asciidoctor-mathematical CHEATSHEET.adoc
```

## Editing

To edit either use visual studio code as Intellij does currently not support math $env$

## Github

Github semms to now show the math in markdown proper