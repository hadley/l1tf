# l1tf: A C solver for l1 trend filtering

This is an R package wrapper around the [l1tf algorithm](https://web.stanford.edu/~boyd/l1_tf/) by Kwangmoo Koh, Seung-Jean Kim and Stephen Boyd.

## Installation

l1tf is not currently on CRAN, but you can install from github with:

```{r}
# install.packages("devtools")
install_github("hadley/l1tf")
```

## Examples

```{r}
plot(snp500, type = "l")
lines(l1tf(snp500, lambda = 50), col = "red")
lines(l1tf(snp500, prop = 0.01), col = "blue")
```