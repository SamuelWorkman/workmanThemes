#' Register Google fonts used by workmanThemes
#'
#' Downloads and registers the Google Fonts used in the package.
#'
#' @export
register_workman_fonts <- function() {
  fams <- sysfonts::font_families()

  if (!"Montserrat" %in% fams) {
    sysfonts::font_add_google("Montserrat", "Montserrat")
  }

  if (!"Open Sans" %in% fams) {
    sysfonts::font_add_google("Open Sans", "Open Sans")
  }

  if (!"Alegreya Sans" %in% fams) {
    sysfonts::font_add_google("Alegreya Sans", "Alegreya Sans")
  }

  if (!"Inconsolata" %in% fams) {
    sysfonts::font_add_google("Inconsolata", "Inconsolata")
  }

  invisible(TRUE)
}

#' Set workmanThemes plotting defaults
#'
#' Registers fonts, enables showtext, and sets the default ggplot2 theme.
#'
#' @param base_size Base font size.
#' @param map Logical; if TRUE, set the map theme as the session default.
#'
#' @export
set_workman_defaults <- function(base_size = 12, map = FALSE) {
  register_workman_fonts()
  showtext::showtext_auto()

  if (isTRUE(map)) {
    ggplot2::theme_set(theme_workman_map(base_size = base_size))
  } else {
    ggplot2::theme_set(theme_workman(base_size = base_size))
  }

  invisible(TRUE)
}