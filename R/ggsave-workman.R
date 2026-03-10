#' Save a ggplot with correct showtext font rendering
#'
#' A thin wrapper around [ggplot2::ggsave()] that temporarily sets showtext's
#' DPI to match the export DPI, ensuring fonts render at the correct size in
#' the saved file.
#'
#' @inheritParams ggplot2::ggsave
#' @param dpi Numeric; resolution in dots per inch. Defaults to 300.
#'
#' @export
ggsave_workman <- function(
  filename,
  plot = ggplot2::last_plot(),
  device = NULL,
  path = NULL,
  scale = 1,
  width = NA,
  height = NA,
  units = "in",
  dpi = 300,
  limitsize = TRUE,
  bg = NULL,
  ...
) {
  old_opts <- showtext::showtext_opts()
  showtext::showtext_opts(dpi = dpi)
  on.exit(showtext::showtext_opts(dpi = old_opts$dpi), add = TRUE)

  ggplot2::ggsave(
    filename = filename,
    plot = plot,
    device = device,
    path = path,
    scale = scale,
    width = width,
    height = height,
    units = units,
    dpi = dpi,
    limitsize = limitsize,
    bg = bg,
    ...
  )
}
