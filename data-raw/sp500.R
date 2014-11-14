
library(xts)
library(quantmod)

## dates as shown in paper, yielding 2001 observations whereas l1_tf data has exactly 2000
dat <- getSymbols("^GSPC", from="1999-03-25", to="2007-03-09", auto.assign=FALSE)

## create data.frame
sp500 <- data.frame(date=index(dat), sp500=coredata(dat)[,6])

## write as csv
write.csv(sp500, file=file.path("..", "data", "sp500.csv"), quote=FALSE, row.names=FALSE)

## save as rda
save(sp500, file.path("..", "data", "sp500.rda"))
