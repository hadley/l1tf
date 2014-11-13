
library(l1tf)

op <- par(mfrow=c(2,1), mar=c(3,4,1,1))
with(sp500, plot(date, log(sp500), type='l', ylab="log-price"))
with(sp500, {
    plot(date, log(sp500), type="l", lty="dotted", col="mediumblue", ylab="log-price")
    lines(date, l1tf(log(sp500), lambda=100), col="blue")
})
par(op)
