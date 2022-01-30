library(plyr)
library(readr)
library(ldply)
file<- read.csv('./smogKrakow/0012017.csv')


liczZplikow <- function(sciezka,nazwaKolumny,jakaFunkcja="mean",DlaIluPlikow=1){
  
  read.csv('./smogKrakow/0012017.csv')
  
}

sciecha<- 'C:\\Users\\Karol\\Documents\\PJATK\\Big Data\\sem 2\\Podstawy programowania w R\\2. 7.11.2021\\Rproject\\smogKrakow'
sciezka<- './smogKrakow'
myfiles = list.files(path=sciezka, pattern="*.csv", full.names=TRUE)
# data zawiera zgrupowane pliki jako jeden obiekt
dat_csv = lapply(myfiles,  read.delim)
# kazdy plik jako oddzielny obiekt
for (i in 1:length(myfiles)) assign(myfiles[i], read.csv(myfiles[i]))

nazwaKolumny<- 'X142_pressure'


for(i in sequence(length(myfiles))){
  yourData <- read.csv(myfiles[1])
  yourMeans <- apply(yourData, 16, mean)
  #save your means in some meaningful way from each csv. 
}

yourMeans


pollutantmean <- function(sciezka, pollutant, ind)
{
  z <- list.files(sciezka)
  totaal <- data.frame()
  for (i in ind){
    hulpspec <- read.csv(z[i])
    totaal <- rbind(totaal,hulpspec)
  }
  mean(totaal[, pollutant], na.rm = TRUE)
}

pollutantmean("smogKrakow","X142_pressure", 1:10)



funkcjaSprawdzajacaPodzielnosc <- function(n,m){
  
  if(n%%m == 0){
    cat("Liczba ",n," jest podzielna przez",m,"\n")
  }
  if(n%%m != 0 || n/m < 0){
    cat("Liczba ",n," nie jest podzielna przez",m,"\n")
  }
}