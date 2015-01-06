# l1tf: l1 trend filtering

This is an R package wrapper around the C solver for the [l1 trend filtering algorithm](https://web.stanford.edu/~boyd/l1_tf/) written by Kwangmoo Koh, Seung-Jean Kim and Stephen Boyd.

## Installation

l1tf is not currently on CRAN, but you can install from github with:

```{r}
# install.packages("devtools")
install_github("hadley/l1tf")
```

## Examples

```{r}
data(sp500)
plot(sp500$log, type='l')
lines(l1tf(sp500$log, lambda = 50), col = "red", type='l')
lines(l1tf(sp500$log, prop = 0.01), col = "blue", type='l')
```
