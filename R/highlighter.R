#' Highlight any R code within htmlwidget.
#'
#' @param code Code you want to highlight.
#'
#' @import htmlwidgets
#'
#' @examples
#' highlight("a <- 1:10")
#'
#' @export
highlight <- function(code, width = "100%", height = "100%") {
  # create the widget
  htmlwidgets::createWidget("highlighter", code, width = width, height = height)
}

#' Shiny output binding.
#' @export
highlightOutput <- function(outputId, code, width = "100%", height = "100%") {
  shinyWidgetOutput(outputId, "highlight", code, width, height, package = "highlighter")
}

#' Shiny render binding.
#' @export
highlightRender <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, highlightOutput, env, quoted = TRUE)
}
