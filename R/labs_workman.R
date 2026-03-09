#' Standardized labels for workmanThemes
#'
#' Builds ggplot2 labels with a standardized caption/source/notes pattern.
#'
#' @param title Plot title.
#' @param subtitle Plot subtitle.
#' @param x X-axis label.
#' @param y Y-axis label.
#' @param colour Colour legend title.
#' @param fill Fill legend title.
#' @param caption Caption text used as-is if supplied.
#' @param source Source note text.
#' @param notes Additional notes text.
#'
#' @export
labs_workman <- function(title = NULL,
                         subtitle = NULL,
                         x = NULL,
                         y = NULL,
                         colour = NULL,
                         fill = NULL,
                         caption = NULL,
                         source = NULL,
                         notes = NULL) {
  final_caption <- caption

  if (is.null(final_caption)) {
    pieces <- character(0)

    if (!is.null(source)) {
      pieces <- c(pieces, paste0("Source: ", source))
    }

    if (!is.null(notes)) {
      pieces <- c(pieces, paste0("Notes: ", notes))
    }

    if (length(pieces) > 0) {
      final_caption <- paste(pieces, collapse = "\n")
    }
  }

  ggplot2::labs(
    title = title,
    subtitle = subtitle,
    x = x,
    y = y,
    colour = colour,
    fill = fill,
    caption = final_caption
  )
}