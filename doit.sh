#/bin/bash -v
jb build docs
mkdir docs/_build/html/pdffiles
cp -a ${HOME}/repos/eoas-ubc.github.io/pdffiles/* ~/repos/eoas-ubc.github.io/docs/_build/html/pdffiles/.
ghp-import -f --no-jekyll -p -b master docs/_build/html -r upstream
