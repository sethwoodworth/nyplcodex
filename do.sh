git clone https://github.com/rdhyee/asciidoctor-htmlbook.git
asciidoctor -a toc -b xhtml5 -d book -T ./asciidoctor-htmlbook/htmlbook-autogen/
-d book The-Brothers-Karamazov.asciidoc -o The-Brothers-Karamazov.html
git clone https://github.com/sethwoodworth/HTMLBook
xsltproc -stringparam external.assets.list " " ./HTMLBook/htmlbook-xsl/epub.xsl
The-Brothers-Karamazov.html
cp ./HTMLBook/stylesheets/epub/epub.css OEBPS
cp cover.png OEBPS/cover.png
zip -rX The-Brothers-Karamazov.epub mimetype
zip -rX The-Brothers-Karamazov.epub OEBPS/ META-INF/
