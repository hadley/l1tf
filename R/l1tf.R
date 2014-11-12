#' L1 trend filteirng
#'
#' @param x Numeric vector of inputs. Must be equally spaced in time.
#' @param lambda A number that controls the balance between accuracy and
#'   simplicity. Small values favour accuracy; large values favour simplicity.
#' @param prop A number between 0 and 1. Specify lambda as a proportion of the
#'   maximum lambda for the input dataset.
#' @useDynLib l1tf l1tf_R l1tf_lambdamax_R
#' @export
#' @examples
#' x <- runif(1000)
#'
#' plot(x)
#' lines(l1tf(x), col = "red")
#' lines(l1tf(x, prop = 0.01), col = "blue")
l1tf <- function(x, lambda, prop = 0.1) {
  if (missing(lambda)) {
    max <- .Call(l1tf_lambdamax_R, x)
    lambda <- prop * max
    message("Using lambda ", format(lambda, digits = 2))
  }

  .Call(l1tf_R, x, lambda)
}
