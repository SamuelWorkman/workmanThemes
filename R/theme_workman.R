#' Register Google fonts for workmanThemes
#'
#' Downloads and registers Google fonts used by the package.
#' Run once per machine, then call `showtext::showtext_auto()`.
#'
#' @export
register_workman_fonts <- function() {
  if (!"Open Sans" %in% sysfonts::font_families()) {
    sysfonts::font_add_google("Open Sans", "Open Sans")
  }

  if (!"Merriweather" %in% sysfonts::font_families()) {
    sysfonts::font_add_google("Merriweather", "Merriweather")
  }

  invisible(TRUE)
}

#' Activate defaults for workmanThemes
#'
#' Registers fonts, enables showtext, and sets the default theme.
#'
#' @export
set_workman_defaults <- function(base_size = 12, base_family = "Open Sans") {
  register_workman_fonts()
  showtext::showtext_auto()

  ggplot2::theme_set(theme_workman(
    base_size = base_size,
    base_family = base_family
  ))

  invisible(TRUE)
}

#' Workman publication theme
#'
#' A clean ggplot2 theme for reports, papers, and public-facing policy graphics.
#'
#' @param base_size Base font size.
#' @param base_family Base font family.
#' @param title_family Font family for titles.
#'
#' @export
theme_workman <- function(base_size = 12,
                          base_family = "Open Sans",
                          title_family = "Merriweather") {

  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(
      plot.title.position = "plot",
      plot.caption.position = "plot",

      plot.title = ggplot2::element_text(
        family = title_family,
        face = "bold",
        size = ggplot2::rel(1.35),
        hjust = 0,
        margin = ggplot2::margin(b = 8)
      ),
      plot.subtitle = ggplot2::element_text(
        size = ggplot2::rel(1.0),
        hjust = 0,
        margin = ggplot2::margin(b = 10)
      ),
      plot.caption = ggplot2::element_text(
        size = ggplot2::rel(0.85),
        colour = "#4D4D4D",
        hjust = 0,
        margin = ggplot2::margin(t = 10)
      ),

      axis.title = ggplot2::element_text(
        face = "bold",
        colour = "#222222"
      ),
      axis.text = ggplot2::element_text(
        colour = "#333333"
      ),

      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(
        colour = "#D9D9D9",
        linewidth = 0.35
      ),

      legend.position = "bottom",
      legend.title = ggplot2::element_text(face = "bold"),
      legend.text = ggplot2::element_text(size = ggplot2::rel(0.9)),

      strip.text = ggplot2::element_text(face = "bold", colour = "#222222"),
      strip.background = ggplot2::element_rect(fill = "#F3F3F3", colour = NA),

      plot.background = ggplot2::element_rect(fill = "white", colour = NA),
      panel.background = ggplot2::element_rect(fill = "white", colour = NA)
    )
}