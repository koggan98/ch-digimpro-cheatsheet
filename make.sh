# Generate a pdf using pandoc
# pandoc CHEATSHEET.md -f markdown -t pdf -o CHEATSHEET.pdf  -V geometry:margin=0.5in
pandoc -t asciidoc -f markdown CHEATSHEET.md > out/CHEATSHEET.adoc
docker run --rm --privileged -u $(id -u):$(id -g) -v `pwd`:/documents asciidoctor/docker-asciidoctor asciidoctor-pdf -a pdf-page-layout=landscape -a stem -r asciidoctor-mathematical -a mathematical-format=svg out/CHEATSHEET.adoc 
