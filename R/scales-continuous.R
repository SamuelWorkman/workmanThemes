#' Continuous colour scale
#'
#' @param palette One of "blue", "green", or "red".
#' @param ... Passed to ggplot2::scale_colour_gradientn().
#'
#' @export
scale_colour_workman_c <- function(palette = "blue", ...) {
  ggplot2::scale_colour_gradientn(
    colours = get_workman_seq(palette),
    ...
  )
}

#' @rdname scale_colour_workman_c
#' @export
scale_color_workman_c <- scale_colour_workman_c

#' Continuous fill scale
#'
#' @param palette One of "blue", "green", or "red".
#' @param ... Passed to ggplot2::scale_fill_gradientn().
#'
#' @export
scale_fill_workman_c <- function(palette = "blue", ...) {
  ggplot2::scale_fill_gradientn(
    colours = get_workman_seq(palette),
    ...
  )
}

#' Diverging colour scale
#'
#' @param midpoint Midpoint for diverging scale.
#' @param ... Passed to ggplot2::scale_colour_gradient2().
#'
#' @export
scale_colour_workman_div <- function(midpoint = 0, ...) {
  ggplot2::scale_colour_gradient2(
    low = wk_div[1],
    mid = wk_div[3],
    high = wk_div[5],
    midpoint = midpoint,
    ...
  )
}

#' @rdname scale_colour_workman_div
#' @export
scale_color_workman_div <- scale_colour_workman_div

#' Diverging fill scale
#'
#' @param midpoint Midpoint for diverging scale.
#' @param ... Passed to ggplot2::scale_fill_gradient2().
#'
#' @export
scale_fill_workman_div <- function(midpoint = 0, ...) {
  ggplot2::scale_fill_gradient2(
    low = wk_div[1],
    mid = wk_div[3],
    high = wk_div[5],
    midpoint = midpoint,
    ...
  )
}

#' Binned colour scale
#'
#' @param palette One of "blue", "green", or "red".
#' @param ... Passed to ggplot2::scale_colour_stepsn().
#'
#' @export
scale_colour_workman_b <- function(palette = "blue", ...) {
  ggplot2::scale_colour_stepsn(
    colours = get_workman_seq(palette),
    ...
  )
}

#' @rdname scale_colour_workman_b
#' @export
scale_color_workman_b <- scale_colour_workman_b

#' Binned fill scale
#'
#' @param palette One of "blue", "green", or "red".
#' @param ... Passed to ggplot2::scale_fill_stepsn().
#'
#' @export
scale_fill_workman_b <- function(palette = "blue", ...) {
  ggplot2::scale_fill_stepsn(
    colours = get_workman_seq(palette),
    ...
  )
}