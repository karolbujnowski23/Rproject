#3. Utwórz funkcję obliczającą współczynnik korelacji r Pearsona dla 2 wektorów o tej samej długości.

x <- c(80,90,100,100,110,120)
y <- c(12,9,10,9,8,5)

funkcjaPearsonCorr <- function(x,y){
  i <- 0
  j <- 0
  k <- 0
  for(i in 1:length(x)){
    X <- x[i]-mean(x)
    Y <- y[i]-mean(y)
    i <- i + X*Y
    j <- j + X^2
    k <- k + Y^2
    r <- i/sqrt(j*k)  
  }  
  cat("Wspolczynnik korelacji liniowej wektora x i wektora y to",r)
}

funkcjaPearsonCorr(x,y)

# Wczytaj dane plik dane.csv i oblicz współczynnik dla wagi i wzrostu. W komentarzu napisz co oznacza wynik.

# R program reading a text file

myData <- read.csv("./dane/dane.csv",sep = ";", header = TRUE)

x <- myData$waga
y <- myData$wzrost

funkcjaPearsonCorr(x,y)