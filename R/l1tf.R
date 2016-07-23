#' L1 trend filteirng
#'
#' @param x Numeric vector of inputs. Must be equally spaced in time.
#' @param lambda A number that controls the balance between accuracy and
#'   simplicity. Small values favour accuracy; large values favour simplicity.
#' @param prop A number between 0 and 1. Specify lambda as a proportion of the
#'   maximum lambda for the input dataset.
#' @param debug If \code{TRUE} will print details about each iteration.
#' @useDynLib l1tf l1tf_R l1tf_lambdamax_R
#' @export
#' @examples
#' x <- runif(1000)
#'
#' plot(x)
#' lines(l1tf(x), col = "red")
#' lines(l1tf(x, prop = 0.01), col = "blue")
#'
#' # SP500 example from paper
#' plot(sp500$date, log(sp500$raw), type="l", col="grey50", ylab="log-price")
#' lines(sp500$date, l1tf(log(sp500$raw), lambda=100), col="blue")
l1tf <- function(x, lambda, prop = 0.1, debug = FALSE) {
  if (missing(lambda)) {
    max <- .Call(l1tf_lambdamax_R, x, debug)
    lambda <- prop * max
    message("Using lambda ", format(lambda, digits = 2))
  }

  .Call(l1tf_R, x, lambda, debug)
}
