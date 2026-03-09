#' Dollar labels for x axis
#'
#' @param prefix Prefix for dollar labels.
#' @param suffix Suffix for labels.
#' @param scale Scale factor.
#' @param accuracy Label accuracy.
#' @param ... Passed to ggplot2::scale_x_continuous().
#'
#' @export
scale_x_dollar_workman <- function(prefix = "$", suffix = "", scale = 1,
                                   accuracy = 1, ...) {
  ggplot2::scale_x_continuous(
    labels = scales::label_dollar(
      prefix = prefix,
      suffix = suffix,
      scale = scale,
      accuracy = accuracy
    ),
    ...
  )
}

#' Dollar labels for y axis
#'
#' @inheritParams scale_x_dollar_workman
#'
#' @export
scale_y_dollar_workman <- function(prefix = "$", suffix = "", scale = 1,
                                   accuracy = 1, ...) {
  ggplot2::scale_y_continuous(
    labels = scales::label_dollar(
      prefix = prefix,
      suffix = suffix,
      scale = scale,
      accuracy = accuracy
    ),
    ...
  )
}

#' Percent labels for x axis
#'
#' @param scale Scale factor for percent labels.
#' @param accuracy Label accuracy.
#' @param ... Passed to ggplot2::scale_x_continuous().
#'
#' @export
scale_x_percent_workman <- function(scale = 100, accuracy = 1, ...) {
  ggplot2::scale_x_continuous(
    labels = scales::label_percent(
      scale = scale,
      accuracy = accuracy
    ),
    ...
  )
}

#' Percent labels for y axis
#'
#' @inheritParams scale_x_percent_workman
#'
#' @export
scale_y_percent_workman <- function(scale = 100, accuracy = 1, ...) {
  ggplot2::scale_y_continuous(
    labels = scales::label_percent(
      scale = scale,
      accuracy = accuracy
    ),
    ...
  )
}