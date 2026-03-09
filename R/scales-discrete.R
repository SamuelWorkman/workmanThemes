#' Discrete colour scale
#'
#' @param ... Passed to ggplot2::discrete_scale().
#'
#' @export
scale_colour_workman_d <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    palette = function(n) workman_pal(n),
    name = ggplot2::waiver(),
    ...
  )
}

#' @rdname scale_colour_workman_d
#' @export
scale_color_workman_d <- scale_colour_workman_d

#' Discrete fill scale
#'
#' @param ... Passed to ggplot2::discrete_scale().
#'
#' @export
scale_fill_workman_d <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    palette = function(n) workman_pal(n),
    name = ggplot2::waiver(),
    ...
  )
}