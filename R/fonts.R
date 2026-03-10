#' Register Google fonts used by workmanThemes
#'
#' Downloads and registers the Google Fonts used in the package.
#'
#' @export
register_workman_fonts <- function() {
  fams <- sysfonts::font_families()
  fonts <- c("Montserrat", "Open Sans", "Alegreya Sans", "Inconsolata")

  for (f in fonts) {
    if (!f %in% fams) sysfonts::font_add_google(f, f)
  }

  invisible(TRUE)
}

#' Set workmanThemes plotting defaults
#'
#' Registers fonts, enables showtext, and sets the default ggplot2 theme.
#'
#' @param base_size Base font size.
#' @param map Logical; if TRUE, set the map theme as the session default.
#' @param white_bg Logical; if TRUE, use a pure white background. Useful for
#'   journal submissions.
#'
#' @export
set_workman_defaults <- function(
  base_size = 12,
  map = FALSE,
  white_bg = FALSE
) {
  register_workman_fonts()
  showtext::showtext_auto()
  showtext::showtext_opts(dpi = 300)

  if (isTRUE(map)) {
    ggplot2::theme_set(theme_workman_map(
      base_size = base_size,
      white_bg = white_bg
    ))
  } else {
    ggplot2::theme_set(theme_workman(
      base_size = base_size,
      white_bg = white_bg
    ))
  }

  invisible(TRUE)
}
