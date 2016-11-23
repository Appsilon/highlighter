library(highlighter)

highlight('highlight <- function(code, width, height) {\n  # create the widget\n  htmlwidgets::createWidget("highlighter", code, width = width, height = height)\n}', width="400px", height="400px")
