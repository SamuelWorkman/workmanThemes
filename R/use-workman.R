#' Activate workmanThemes defaults for a plotting session
#'
#' Registers fonts, enables showtext, and sets the default ggplot theme.
#' Optionally applies light default styling to common geoms.
#'
#' @param base_size Base font size.
#' @param map Logical; if TRUE, use the map theme by default.
#' @param style_geoms Logical; if TRUE, update defaults for some common geoms.
#'
#' @export
use_workman <- function(base_size = 12, map = FALSE, style_geoms = FALSE) {
  set_workman_defaults(base_size = base_size, map = map)

  if (isTRUE(style_geoms)) {
    ggplot2::update_geom_defaults("point", list(size = 2.5, alpha = 0.9))
    ggplot2::update_geom_defaults("line", list(linewidth = 0.8))
    ggplot2::update_geom_defaults("col", list(colour = NA))
    ggplot2::update_geom_defaults("bar", list(colour = NA))
  }

  invisible(TRUE)
}