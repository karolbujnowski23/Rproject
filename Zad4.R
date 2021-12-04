
#4. Napisz funkcję zwracającą ramke danych z danych podanych przez użytkownika 
# stworzDataFrame <- function(ile=1)
# W pierwszym wierszu użytkownik podaje nazwy kolumn. 
# W kolejnych wierszach zawartość wierszy ramki danych ( tyle wierszy ile podaliśmy w argumencie ile. ile=1 oznacza, 
# że gdy użytkownik nie poda żadnej wartości jako parametr, domyślna wartością będzie 1)


stworzDataFrame <- function(ile=1){
  Odp <- c()
  Odp[1] <- readline("Prosze podac nazwe kolumny   ")
  
  while(TRUE){
    ile = ile + 1
    Odp[ile] <- readline("Prosze podac wartosc  ")
    if(nchar(Odp[ile])==0){
      break 
    }
  }
  
  if(ile>2){
    df<- data.frame(Odp[3:ile-1])
    colnames(df) <- Odp[1]
  }else{
    df<- data.frame("")
    colnames(df) <- Odp[1]
  }
  df
}

stworzDataFrame()
