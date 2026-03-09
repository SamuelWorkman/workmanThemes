#' Workman accent colours
#'
#' Returns named accent colours from the package palette.
#'
#' @param name Optional single colour name. If NULL, returns all accent colours.
#'
#' @export
workman_cols <- function(name = NULL) {
  cols <- c(
    red = wk_red,
    orange = wk_orange,
    yellow = wk_yellow,
    green = wk_green,
    cyan = wk_cyan,
    blue = wk_blue,
    purple = wk_purple,
    magenta = wk_magenta
  )

  if (is.null(name)) {
    return(cols)
  }

  if (!name %in% names(cols)) {
    stop("Unknown colour name.", call. = FALSE)
  }

  cols[[name]]
}

#' Workman neutral colours
#'
#' Returns named neutral colours from the package palette.
#'
#' @param name Optional single neutral name. If NULL, returns all neutrals.
#'
#' @export
workman_neutrals <- function(name = NULL) {
  cols <- c(
    paper = wk_paper,
    base_50 = wk_base_50,
    base_100 = wk_base_100,
    base_150 = wk_base_150,
    base_200 = wk_base_200,
    base_300 = wk_base_300,
    base_500 = wk_base_500,
    base_600 = wk_base_600,
    base_700 = wk_base_700,
    base_850 = wk_base_850,
    black = wk_black
  )

  if (is.null(name)) {
    return(cols)
  }

  if (!name %in% names(cols)) {
    stop("Unknown neutral name.", call. = FALSE)
  }

  cols[[name]]
}