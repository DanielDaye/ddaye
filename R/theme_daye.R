#' Daye Theme
#'
#' Custom notebook-styled theme for ggplot
#'
#' Applies a simplistic theme to ggplot objects to mimic notebook paper.
#' Arguments are passed directly to theme_gray but text is scaled up by 1.25
#'
#' @param bs base_size
#' @param bf base_family
#' @param bls base_line_size
#' @param brs base_rect_size
#'
#' @importFrom ggplot2 '%+replace%' theme theme_grey
#'
#' @export

theme_daye <- function (bs = 11, bf = "", bls = bs/22, brs = bs/22) {
  theme_gray(base_size = bs*1.25, base_family = bf, base_line_size = bls, base_rect_size = brs) %+replace%
    theme(panel.background = element_rect(fill = "#fefeff", color = "#18181a"),
          panel.grid.minor = element_blank(),
          panel.grid.major = element_line(color = "#4dadf9"))
}
