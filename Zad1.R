#Zadanie 1 Napisz funkcję sprawdzająca czy 1 liczba jest podzielna przez druga użyj - %%

funkcjaNaPodzielnosc <- function(n,k){
  
  if(n%%k == 0){cat("Liczba ",n," jest podzielna przez",k,"\n")}
  if(n%%k != 0 || n/k < 0){cat("Liczba ",n," nie jest podzielna przez",k,"\n")}
}


n <- 700
k <- 3    

funkcjaNaPodzielnosc(n,k)
