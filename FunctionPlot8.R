FunctionPlot <- function(seed, a, b, c, d, f){
  set.seed(seed)
  x <- rt(a, b, c)
  e <- rnorm(a, d, f)
  y <- 12 + 2*x + e
  m.x <- median(x)
  m.y <- median(y)
  layout(matrix(c(1, 2, 3, 4), 2, 2, byrow = TRUE), widths = c(1, 3), heights = c(2, 1))
  boxplot(y, verical = TRUE, range = 2)
  plot(x, y, abline(v = m.x,h = m.y, lty = 3))
  plot(x, y, xlab = "", ylab = "", axes = F, col = "white")
  boxplot(x, horizontal = TRUE, range = 3)
}

