#' Complete list of palettes
#'
#' Use \code{\link{qg_palette}} to construct palettes of desired length.
#'
#' @export
qg_palettes <- list(
  openings = c("#191a1e", "#765f4f", "#7e5036", "#6e7070"),
  adopted = c("#4e2f26", "#12202c", "#59757e", "#949ea2", "#23413f"),
  moscow = c("#7a534c", "#002629", "#a59b92"),
  endgame = c("#091113", "#d8e2e4", "#6b5756", "#3a2426"),
  practice = c("#997a80", "#9daca7", "#322920", "#3d515a"),
  room = c("#9e9693", "#65403a", "#75574d", "#2f292b"),
  squash = c("#0a0a0a", "#8f9190", "#5c4943", "#532623",  "#636365"),
  USopen = c("#d3a0a5", "#6e4030", "#3b5963", "#636d64"),
)

#' A Queen's Gambit palette generator
#'
#' These are a handful of color palettes from the Netflix series "The Queens Gambit".
#' Inspired by the \href{https://github.com/karthik/wesanderson}{Wes Anderson Palettes}.
#' @param n Number of colors desired. Unfortunately most palettes now only
#'   have 3 or 5 colors. If omitted, uses all colours.
#' @param name Name of desired palette. Choices are:
#'   \code{adopted}, \code{endgame},  \code{moscow},
#'   \code{openings}, \code{practice},  \code{room}, \code{squash},
#'   \code{USopen}
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' qg_palette("adopted")
#' qg_palette("moscow")
#'
#' # If you need more colours than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colours
#' pal <- qg_palette(21, name = "room", type = "continuous")
#' image(volcano, col = pal)
qg_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- qg_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}

#' heatmap
#'
#' A heatmap example
"heatmap"
