#' Workman ggplot2 theme
#'
#' Clean publication theme with separate fonts for title, subtitle,
#' body, and caption text.
#'
#' @param base_size Base font size.
#' @param base_family Base body font family.
#' @param title_family Font family for plot titles.
#' @param subtitle_family Font family for subtitles.
#' @param caption_family Font family for captions.
#' @param title_size Title font size multiplier relative to base_size.
#' @param subtitle_size Subtitle font size multiplier relative to base_size.
#' @param caption_size Caption font size multiplier relative to base_size.
#' @param axis_title_size Axis title font size multiplier relative to base_size.
#' @param axis_text_size Axis text font size multiplier relative to base_size.
#' @param legend_title_size Legend title font size multiplier relative to base_size.
#' @param legend_text_size Legend text font size multiplier relative to base_size.
#' @param strip_text_size Facet strip text font size multiplier relative to base_size.
#' @param base_line_size Base line size.
#' @param base_rect_size Base rectangle line size.
#'
#' @export
theme_workman <- function(
  base_size = 12,
  base_family = "Alegreya Sans",
  title_family = "Montserrat",
  subtitle_family = "Open Sans",
  caption_family = "Inconsolata",
  title_size = 3.0,
  subtitle_size = 2.0,
  caption_size = 0.9,
  axis_title_size = 1.8,
  axis_text_size = 1.5,
  legend_title_size = 1.8,
  legend_text_size = 1.5,
  strip_text_size = 1.0,
  base_line_size = base_size / 22,
  base_rect_size = base_size / 22
) {
  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size,
    base_rect_size = base_rect_size
  ) %+replace%
    ggplot2::theme(
      line = ggplot2::element_line(
        colour = wk_base_500,
        linewidth = base_line_size,
        lineend = "butt"
      ),
      rect = ggplot2::element_rect(
        fill = wk_paper,
        colour = NA,
        linewidth = base_rect_size
      ),
      text = ggplot2::element_text(
        family = base_family,
        size = base_size,
        colour = wk_black
      ),

      plot.background = ggplot2::element_rect(fill = wk_paper, colour = NA),
      panel.background = ggplot2::element_rect(fill = wk_paper, colour = NA),
      panel.border = ggplot2::element_blank(),

      plot.title.position = "plot",
      plot.caption.position = "plot",

      plot.title = ggplot2::element_text(
        family = title_family,
        face = "bold",
        size = base_size * title_size,
        colour = wk_black,
        hjust = 0,
        margin = ggplot2::margin(b = 8)
      ),
      plot.subtitle = ggplot2::element_text(
        family = subtitle_family,
        size = base_size * subtitle_size,
        colour = wk_base_700,
        hjust = 0,
        margin = ggplot2::margin(b = 12)
      ),
      plot.caption = ggplot2::element_text(
        family = caption_family,
        size = base_size * caption_size,
        colour = wk_base_600,
        hjust = 0,
        margin = ggplot2::margin(t = 12)
      ),

      axis.title = ggplot2::element_text(
        family = base_family,
        size = base_size * axis_title_size,
        face = "bold",
        colour = wk_black
      ),
      axis.text = ggplot2::element_text(
        family = base_family,
        size = base_size * axis_text_size,
        colour = wk_base_700
      ),

      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(
        colour = wk_base_150,
        linewidth = 0.4
      ),

      axis.line = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),

      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.background = ggplot2::element_rect(fill = wk_paper, colour = NA),
      legend.key = ggplot2::element_rect(fill = wk_paper, colour = NA),
      legend.title = ggplot2::element_text(
        family = base_family,
        size = base_size * legend_title_size,
        face = "bold",
        colour = wk_black
      ),
      legend.text = ggplot2::element_text(
        family = base_family,
        size = base_size * legend_text_size,
        colour = wk_base_700
      ),

      strip.background = ggplot2::element_rect(
        fill = wk_base_50,
        colour = NA
      ),
      strip.text = ggplot2::element_text(
        family = base_family,
        size = base_size * strip_text_size,
        face = "bold",
        colour = wk_black
      ),

      plot.margin = ggplot2::margin(12, 12, 12, 12)
    )
}

#' Workman map theme
#'
#' Variant of the workman theme tuned for choropleths and spatial graphics.
#'
#' @param base_size Base font size.
#' @param base_family Base body font family.
#' @param title_family Font family for plot titles.
#' @param subtitle_family Font family for subtitles.
#' @param caption_family Font family for captions.
#' @param title_size Title font size multiplier relative to base_size.
#' @param subtitle_size Subtitle font size multiplier relative to base_size.
#' @param caption_size Caption font size multiplier relative to base_size.
#' @param legend_title_size Legend title font size multiplier relative to base_size.
#' @param legend_text_size Legend text font size multiplier relative to base_size.
#'
#' @export
theme_workman_map <- function(
  base_size = 12,
  base_family = "Alegreya Sans",
  title_family = "Montserrat",
  subtitle_family = "Open Sans",
  caption_family = "Inconsolata",
  title_size = 3.0,
  subtitle_size = 2.0,
  caption_size = 0.9,
  legend_title_size = 1.8,
  legend_text_size = 1.5
) {
theme_workman(
    base_size = base_size,
    base_family = base_family,
    title_family = title_family,
    subtitle_family = subtitle_family,
    caption_family = caption_family,
    title_size = title_size,
    subtitle_size = subtitle_size,
    caption_size = caption_size,
    legend_title_size = legend_title_size,
    legend_text_size = legend_text_size
  ) %+replace%
    ggplot2::theme(
      axis.title = ggplot2::element_blank(),
      axis.text = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),

      legend.position = "right",
      legend.direction = "vertical",
      legend.key.height = grid::unit(2.5, "cm"),
      legend.title = ggplot2::element_text(
        family = base_family,
        size = base_size * legend_title_size,
        face = "bold",
        colour = wk_black
      ),
      legend.text = ggplot2::element_text(
        family = base_family,
        size = base_size * legend_text_size,
        colour = wk_base_700
      ),
      plot.margin = ggplot2::margin(10, 10, 10, 10)
    )
}