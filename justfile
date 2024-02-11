render:
  Rscript -e 'bookdown::render_book("index.Rmd")'

watch:
  Rscript -e 'bookdown::render_book("index.Rmd")'
  ls *.Rmd chapters/*.Rmd | entr -ncrsap 'echo "File changed: $0"; Rscript -e "args = commandArgs(trailingOnly=TRUE); bookdown::render_book(args[1])" $0'

browse:
  open _book/index.html

