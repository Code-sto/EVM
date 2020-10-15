FunctionHist <- function(seed, a, b, c, d, f){
  set.seed(seed)
  x <- rt(a, b, c)
  e <- rnorm(a, d, f)
  
  layout(matrix(c(1, 2), 2, 1, byrow = TRUE))
  hist(x, freq = F, ylim = c(0, 0.4))
  curve(dnorm(x, mean = mean(x), sd = sd(x)),col = "darkblue", lwd = 2, add = T)
  lines(density(x), col = "red", lwd = 3)
  
  hist(e, freq = F, ylim = c(0,0.035))
  curve(dnorm(x, mean = mean(e), sd = sd(e)),col = "darkblue", lwd = 2, add = T)
  lines(density(e), col = "red", lwd = 3)
  
  sum.x <- c(summary(x),use.names = FALSE)
  sum.e <- c(summary(e),use.names = FALSE)
  quant.x <- sum.x[5] - sum.x[2]
  quant.e <- sum.e[5] - sum.e[2]
  NewX <- x[abs(x - mean(x)) <= quant.x]
  NewE <- e[abs(e - mean(e)) <= quant.e]
  razm.x <- max(NewX) - min(NewX)
  razm.e <- max(NewE) - min(NewE)
  return(data.frame('Razmah variacii x' = razm.x, 'Razmah variacii E' = razm.e)) #Русские символы почему-то отказывается воспроизводить(
}
