#5 Napisz funkcję , która pobiera sciezkeKatalogu, nazweKolumny, jakaFunkcje, DlaIluPlikow i liczy: 
#mean, median,min,max w zależności od podanej nazwy funkcji w argumencie, z katologu który podaliśmy i z tylu plików ilu podaliśmy dla wybranej nazwy kolumny. 

# mean, median,min,max 

liczZplikow <- function(sciezka,nazwaKolumny,jakaFunkcja,DlaIluPlikow){ 
  
  # Tworzymy liste z nazwami plikow w katalogu
  list <- list.files(sciezka)
  listaWynikow <- c()
  
  if(DlaIluPlikow>length(list)){
    print("Argument fukcji jest DlaIluPlikownieprawidlowy")
  }else{
    for(i in 1:DlaIluPlikow){
      
      # zapisujemy zawartosc poszczegolnych plikow zapisujemy do zmiennej file
      file <- list[i]
      
      # Tworzymy sciezki do poszczeglnych plikow laczac stringi
      pathToFile <- paste(sciezka,file,sep="/")
      
      # Wczytujemy poszczegolne pliki
      myDataFrame <- read.csv(pathToFile,sep = ",", header = TRUE, na.strings = c("","NA"))
      
      
      # wyciagamy z pliku zawartosc poszczegolnej kolumny
      myDataFrame <- na.omit(myDataFrame[[nazwaKolumny]])
      is.numeric(myDataFrame)
      
      # zabezpieczenia na wypadek braku takiej kolumny w pliku
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


liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mean",1)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","max",1)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","min",1)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mediana",1)

liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mean",2)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","max",2)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","min",2)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mediana",2) 

liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mean",3)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","max",3)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","min",3)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mediana",3) 

liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mean",9)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","max",9)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","min",9)
liczZplikow("F:/PJAKT/My_R_Projekts/smogKrakow","X142_pressure","mediana",9) 
