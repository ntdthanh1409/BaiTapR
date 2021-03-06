#6.3 Function


#6.3.1. Zeros and NAs
setwd("D:/R/7.5.2021")
Veg <- read.table(file="Vegetation2.txt", header = TRUE)
names(Veg)
#H?m ki???m tra xem trong c???t c? bao nhi?u bi???n ch???a NA
NAPerVariable <- function(X1){
  D1 <- is.na(X1)
  colSums(D1)
}
NAPerVariable(Veg)
CP <- read.table(file="CodParasite.txt", header = TRUE)
NAPerVariable(CP)
#H?m ki???m tra bi???n zero (0)


ZeroPerVariable <- function(X1){
  D1= (X1==0)
  colSums(D1)
}
ZeroPerVariable(Veg)
ZeroPerVariable(CP)
ZeroPerVariable <- function(X1){
  D1= (X1==0)
  colSums(D1, na.rm = TRUE)
}
ZeroPerVariable(Veg)
ZeroPerVariable(CP)


#6.3.2 H?m c? nhi???u tham s???
VariableInfo <-function(X1, Choice1){
  if (Choice1== "Zeros") {
    D1= (X1==0)
  }
  if (Choice1== "NAs") {
    D1 <- is.na(X1)
  }
  colSums(D1, na.rm=TRUE)
}
VariableInfo(CP,"Zeros")
VariableInfo(CP,"NAs")
VariableInfo(CP,"thamso")
VariableInfo(CP)


#6.3.3
#G?n gi? tr??? m???c d???nh cho Choice1
VariableInfo <-function(X1, Choice1="Zeros"){
  if (Choice1== "Zeros") {
    D1= (X1==0)
  }
  if (Choice1== "NAs") {
    D1 <- is.na(X1)
  }
  colSums(D1, na.rm=TRUE)
}
VariableInfo(CP,"Zeros")
VariableInfo(CP,"NAs")
VariableInfo(CP,"thamso")
VariableInfo(CP)


#Tham s??? kh?ng gi???ng v???i gi? tr??? c???a ch?ng ta
#Dua ra 1 th?ng b?o


VariableInfo <-function(X1, Choice1="Zeros"){
  if (Choice1== "Zeros") {
    D1= (X1==0)
  }
  if (Choice1== "NAs") {
    D1 <- is.na(X1)
  }
  if (Choice1!= "Zeros" & Choice1 != "NAs") {
    print("You make a miss typo.You should choose: Zeros or NAs")
  }else{
    colSums(D1, na.rm=TRUE)
  }
}
VariableInfo(CP,"Zeros")
VariableInfo(CP,"NAs")
VariableInfo(CP,"thamso")
VariableInfo(CP)