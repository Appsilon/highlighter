library(highlighter)

highlight("
  highlight <- function(code, width, height) {
    # create the widget
    htmlwidgets::createWidget('highlighter', code, width = width, height = height)
  }", width = "400px", height = "400px")
highlight("a <- 1:10")
