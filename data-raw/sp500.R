library(xts)
library(quantmod)

## dates as shown in paper, yielding 2001 observations whereas l1_tf data has exactly 2000
dat <- getSymbols("^GSPC", from="1999-03-25", to="2007-03-09", auto.assign=FALSE)

sp500 <- data.frame(
  date = index(dat),
  raw = coredata(dat)[,6],
  log = log(coredata(dat)[,6])
)

# Useful for diffs
write.csv(sp500, file = "data-raw/sp500.csv", quote=FALSE, row.names=FALSE)
save(sp500, file = "data/sp500.rda")
