# Flexoki neutrals
wk_paper <- "#FFFCF0"
wk_base_50 <- "#F2F0E5"
wk_base_100 <- "#E6E4D9"
wk_base_150 <- "#DAD8CE"
wk_base_200 <- "#CECDC3"
wk_base_300 <- "#B7B5AC"
wk_base_500 <- "#878580"
wk_base_600 <- "#6F6E69"
wk_base_700 <- "#575653"
wk_base_850 <- "#282726"
wk_black <- "#100F0F"

# Flexoki accents
wk_red <- "#D14D41"
wk_orange <- "#DA702C"
wk_yellow <- "#B79A15"
wk_green <- "#879A39"
wk_cyan <- "#3AA99F"
wk_blue <- "#4385BE"
wk_purple <- "#8B7EC8"
wk_magenta <- "#CE5D97"

# Sequential ramps
wk_blue_seq <- c("#EAF2F5", "#D4E2EC", "#AFCADD", "#7EADD0", "#4385BE", "#205EA6")
wk_green_seq <- c("#F0F3DA", "#E1E8BE", "#C7D37A", "#A4B65A", "#879A39", "#66800B")
wk_red_seq <- c("#FFE6DE", "#FFD2C7", "#F8A79A", "#E97B6B", "#D14D41", "#AF3029")

# Diverging
wk_div <- c("#205EA6", "#6EA8C9", "#DAD8CE", "#F89A8A", "#AF3029")

#' Workman discrete palette
#'
#' @param n Number of colours.
#'
#' @export
workman_pal <- function(n) {
  pal <- c(
    wk_blue, wk_orange, wk_green, wk_purple,
    wk_red, wk_cyan, wk_yellow, wk_magenta
  )

  if (n > length(pal)) {
    stop("workman_pal() supports up to 8 discrete colours.", call. = FALSE)
  }

  pal[seq_len(n)]
}

#' Internal helper to get sequential palette
#'
#' @param palette One of "blue", "green", or "red".
#'
#' @keywords internal
get_workman_seq <- function(palette = "blue") {
  switch(
    palette,
    blue = wk_blue_seq,
    green = wk_green_seq,
    red = wk_red_seq,
    stop("palette must be one of 'blue', 'green', or 'red'.", call. = FALSE)
  )
}