#' Binned fill scale for maps
#'
#' Convenience fill scale for choropleth maps using workmanThemes defaults.
#'
#' @param palette One of "blue", "green", or "red".
#' @param n.breaks Approximate number of bins.
#' @param labels A labelling function, e.g. scales::label_number(),
#'   scales::label_dollar(), or scales::label_percent(scale = 1).
#' @param ... Passed to ggplot2::scale_fill_stepsn().
#'
#' @export
scale_fill_workman_map_b <- function(
  palette = "blue",
  n.breaks = 6,
  labels = scales::label_number(),
  ...
) {
  ggplot2::scale_fill_stepsn(
    colours = get_workman_seq(palette),
    n.breaks = n.breaks,
    labels = labels,
    guide = ggplot2::guide_coloursteps(
      direction = "vertical",
      barheight = grid::unit(4, "cm"),
      barwidth = grid::unit(0.6, "cm"),
      title.position = "top",
      label.position = "right"
    ),
    ...
  )
}

#' Continuous fill scale for maps
#'
#' Convenience continuous fill scale for choropleth maps using
#' workmanThemes defaults.
#'
#' @param palette One of "blue", "green", or "red".
#' @param n.breaks Approximate number of legend breaks.
#' @param labels A labelling function, e.g. scales::label_number(),
#'   scales::label_dollar(), or scales::label_percent(scale = 1).
#' @param ... Passed to ggplot2::scale_fill_gradientn().
#'
#' @export
scale_fill_workman_map_c <- function(
  palette = "blue",
  n.breaks = 6,
  labels = scales::label_number(),
  ...
) {
  ggplot2::scale_fill_gradientn(
    colours = get_workman_seq(palette),
    n.breaks = n.breaks,
    labels = labels,
    guide = ggplot2::guide_colourbar(
      direction = "vertical",
      barheight = grid::unit(4, "cm"),
      barwidth = grid::unit(0.6, "cm"),
      title.position = "top",
      label.position = "right"
    ),
    ...
  )
}