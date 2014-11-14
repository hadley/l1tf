#' SP 500 data
#'
#' The Daily Standard & Poor index from March 25, 1999 to March 9, 2007.
#'
#' @format A data frame with 2001 rows and 3 columns:
#' \describe{
#' \item{date}{date of measurement}
#' \item{raw}{Raw value of SP500}
#' \item{log}{Logged value, as used in paper}
#' }
#' @examples
#' plot(sp500$date, sp500$log, type = "l")
#' lines(sp500$date, l1tf(sp500$log, lambda = 50), col = "red")
#' lines(sp500$date, l1tf(sp500$log, prop = 0.01), col = "blue")
"sp500"
