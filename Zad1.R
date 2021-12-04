#Zadanie 1 Napisz funkcję sprawdzająca czy 1 liczba jest podzielna przez druga użyj - %%

n <- 1000
m <- 3

funkcjaSprawdzajacaPodzielnosc <- function(n,m){
  
  if(n%%m == 0){
    cat("Liczba ",n," jest podzielna przez",m,"\n")
  }
  if(n%%m != 0 || n/m < 0){
    cat("Liczba ",n," nie jest podzielna przez",m,"\n")
  }
}

funkcjaSprawdzajacaPodzielnosc(n,m)