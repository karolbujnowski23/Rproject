#5 Napisz funkcję , która pobiera sciezkeKatalogu, nazweKolumny, jakaFunkcje, DlaIluPlikow i liczy: 
#mean, median, min, max w zależności od podanej nazwy funkcji w argumencie, z katologu który podaliśmy i z tylu plików ilu podaliśmy dla wybranej nazwy kolumny. 
# mean, median,min,max 

liczpoplikach <- function(sciezkaKatalogu,nazwaKolumny,jakaFunkcja,DlaIluPlikow){ 
  
  # Tworze liste z nazwami plikow w folderze
  list <- list.files(sciezkaKatalogu)
  listaWynikow <- c()
  
  if(DlaIluPlikow>length(list)){
    print("Argument fukcji jest DlaIluPlikownieprawidlowy")
  }else{
    for(i in 1:DlaIluPlikow){
      
      # zapisuje zawartosc poszczegolnych plikow zapisujemy do zmiennej file
      file <- list[i]
      # Tworzy sciezki do poszczeglnych plikow laczac str
      filePath <- paste(sciezkaKatalogu,file,sep="/")
      
      # Wczytuje poszczegolne pliki
      myDataFrame <- read.csv(filePath,sep = ",", header = TRUE, na.strings = c("","NA"))
      
      # wyciaga z pliku zawartosc poszczegolnej kolumny
      myDataFrame <- na.omit(myDataFrame[[nazwaKolumny]])
      is.numeric(myDataFrame)
      
      # zabezpieczenia na wypadek braku kolumny w pliku
      if(is.numeric(myDataFrame) == TRUE){
        if(jakaFunkcja == "mean"){
          listaWynikow[i] <- mean(myDataFrame)
          wynik <- mean(listaWynikow)
        }else if(jakaFunkcja == "median"){
          listaWynikow[i] <- median(myDataFrame)
          wynik <- median(listaWynikow)
        } else if(jakaFunkcja == "min"){
          listaWynikow[i] <- min(myDataFrame)
          wynik <- min(listaWynikow)
        }else{
          listaWynikow[i] <- max(myDataFrame)
          wynik <- max(listaWynikow)
        }
      }else{
      }
    }
  }
  wynik
}


liczpoplikach("./smogKrakow","X142_pressure","max",2)
