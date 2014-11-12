#' L1 trend filteirng
#'
#' @param x Numeric vector of inputs. Must be equally spaced in time.
#' @param lambda A number that controls the balance between accuracy and
#'   simplicity. Small values favour accuracy; large values favour simplicity.
#' @useDynLib l1tf l1tf_R
#' @export
#' @examples
#' x <- runif(1000)
#'
#' plot(x)
#' lines(l1tf(x, 0.5))
l1tf <- function(x, lambda = 0.1) {
  .Call(l1tf_R, x, lambda)
}
