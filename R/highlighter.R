#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' @import htmlwidgets
#' @export
highlight <- function(code, width = "100%", height = "100%") {
  # create the widget
  htmlwidgets::createWidget("highlighter", code)
}

#' @export
highlightOutput <- function(outputId, code, width = "100%", height = "100%") {
  shinyWidgetOutput(outputId, "highlight", code, width, height, package = "highlighter")
}
#' @export
highlightRender <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, highlightOutput, env, quoted = TRUE)
}
