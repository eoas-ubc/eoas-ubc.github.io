#/bin/bash -v
mkdir -p docs/_build/html/scipy
cp ~/repos/eoas_tlef/docs/scipy_bof_slides.slides.html ~/repos/eoas-ubc.github.io/docs/_build/html/scipy/.
mkdir docs/_build/html/pdffiles
cp -a /Users/phil/repos/eoas-ubc.github.io/pdffiles/project_timeline.pdf ~/repos/eoas-ubc.github.io/docs/_build/html/pdffiles/.
ghp-import -f --no-jekyll -p -b master docs/_build/html -r upstream
