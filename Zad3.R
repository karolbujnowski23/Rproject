#3. Utwórz funkcję obliczającą współczynnik korelacji r Pearsona dla 2 wektorów o tej samej długości.

x <- c(80,90,100,100,110,120)
y <- c(12,9,10,9,8,5)

funkcjaLiczacaWspolczynikKorelacjiLiniowejPearsona <- function(x,y){
  m <- 0
  k <- 0
  l <- 0
  for(i in 1:length(x)){
    X <- x[i]-mean(x)
    Y <- y[i]-mean(y)
    m <- m + X*Y
    k <- k + X^2
    l <- l + Y^2
    r <- m/sqrt(k*l)  
  }  
  cat("Wspolczynnik korelacji liniowej wektora x i wektora y to",r)
}

funkcjaLiczacaWspolczynikKorelacjiLiniowejPearsona(x,y)

# Wczytaj dane plik dane.csv i oblicz współczynnik dla wagi i wzrostu. W komentarzu napisz co oznacza wynik.

# R program reading a text file

myData <- read.csv("dane.csv",sep = ";", header = TRUE)

x <- myData$waga
y <- myData$wzrost

funkcjaLiczacaWspolczynikKorelacjiLiniowejPearsona(x,y)