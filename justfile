render:
  Rscript -e 'renv::load("."); bookdown::render_book("index.Rmd")'

watch:
  Rscript -e 'renv::load("."); bookdown::render_book("index.Rmd")'
  ls *.Rmd | entr -ncrsap 'echo "File changed: $0"; Rscript -e "args = commandArgs(trailingOnly=TRUE); renv::load("."); bookdown::render_book(args[1])" $0'

browse:
  open _book/index.html

