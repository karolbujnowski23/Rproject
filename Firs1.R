print('hello')
print('hello2')

# zadanie 1 
# zadanie 2
getwd()
setwd('C:\Users\Karol\Documents\PJATK\Big Data\sem 2\Podstawy programowania w R\2. 7.11.2021\Rproject')

x<-125
x
class(x)
str(x)
is.vector(x)

x<-c(1,2,3,4,5,6,7,8,9,10)
x
x<-seq(1:10)

x<-seq(1, 10, by= 1)
y<-seq(10, 1, by= -1)

is.numeric(x)
as.character(x)
?seq   #znak zapytania wywoluje help

z<- c(x,y)
z<- c(x, as.character(x))

z<- as.numeric(z)
as.logical(z)
z<- c(0,z)
w<- as.logical(z)
nowy<- as.numeric(w)
nowy2<- c('raz','dwa','trzy')
lista<- list(z, nowy, nowy2)
lista[[3]][2]

for(i in 1:length(z)){
  print( z[i])
}

for(i in 1:length(lista)){
  for(j in 1:length(lista[[i]])){
  print(lista[[i]][j])
  }}

?pow2
#brak biblioteki
pow2(x)

install.packages("pracma")
library(pracma)
pow2(x)

i<-1
while (i<=length(x)){
  print(pow2(x[i]))
  i<-i+1
}

#data.frame
df<-data.frame(1,2,3)
df2<-data.frame(id=c(1,2),c('2','3'),c(2,3))

?read.csv

read.csv("./dane/dane.csv")

colnames(df)<- c("wzrost","waga","wiek")
str(df)
dfFromFile<-read.csv("./dane/dane.csv",TRUE,";")
dfFromFile<-read.csv("./dane/dane.csv",header=TRUE,sep=";")
View(dfFromFile)

#piszemy funkcje

hello <- function(x){
  print(paste0("hello ",x))
}

hello("lukasz czego szukasz")
hello(x='lukasz')
txt<-"lukasz2"
hello(x=txt)

#napisz funkcje ktora obliczy nam warjancje 

wariancja<- function (x){
  
}
?var

maierz<- matrix(x,nrow= 10,ncol=10)
#operatory: +,-,*,/,%%,%/% - jak działają?

?readline
odp<- readline("Are you satisfied R user?")
odp1<- strsplit(odp,split=",")[[1]][1]
odp2<- strsplit(odp,split=",")[[1]][2]
v<-strsplit(odp,split=",")[[1]]

odpowiedzFrame<- data.frame(matrix(ncol=3,nrow=0))
colnames(podpowiedzFrame)<-v
 
odp
