#' Workman wrapper for geom_sf
#'
#' A convenience wrapper around ggplot2::geom_sf() that applies
#' default border styling for choropleth and administrative maps.
#'
#' @param mapping Set of aesthetic mappings created by aes().
#' @param data The data to be displayed in this layer.
#' @param stat The statistical transformation to use.
#' @param position Position adjustment.
#' @param ... Additional arguments passed to ggplot2::geom_sf().
#' @param colour Border colour for polygons.
#' @param linewidth Border line width.
#' @param alpha Alpha transparency.
#' @param inherit.aes Whether to inherit aesthetics.
#' @param show.legend Whether to include the layer in legends.
#'
#' @export
geom_sf_workman <- function(mapping = NULL,
                            data = NULL,
                            stat = "sf",
                            position = "identity",
                            ...,
                            colour = workman_neutrals("base_200"),
                            linewidth = 0.15,
                            alpha = NA,
                            inherit.aes = TRUE,
                            show.legend = NA) {
  ggplot2::geom_sf(
    mapping = mapping,
    data = data,
    stat = stat,
    position = position,
    ...,
    colour = colour,
    linewidth = linewidth,
    alpha = alpha,
    inherit.aes = inherit.aes,
    show.legend = show.legend
  )
}