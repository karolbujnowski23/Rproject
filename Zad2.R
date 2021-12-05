
#2. Pociąg z Lublina do Warszawy przejechał połowę drogi ze średnią prędkością 120 km/h.
#Drugą połowę przejechał ze średnią prędkością 90 km/h.
#Jaka była średnia prędkość pociągu?

v1 <- 120
v2 <- 90

fukcjaSredniaPredkoscPociagu <- function(v1,v2){
  vs <- mean(c(v1,v2))
  cat("Srednia predkosc z",v1,"km/h i",v2, "km/h to", vs,"km/h.")
}

fukcjaSredniaPredkoscPociagu(v1,v2)

