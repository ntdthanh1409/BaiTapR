setwd("C:/Users/PC/Desktop/New folder1")

Owls <- read.table('Owls.txt', header = TRUE,dec = ".")
Owls
#You should check all variables (column), it should available for analysing.
names(Owls)
str(Owls)

#Our function:
#Check how many station (tram khi tuong) in our dataset
Allnests <- unique(Owls$Nest)
N <- length(Allnests)

for (i in 1:N) {
  nest.i <-as.character(Allnests[i])
  print(nest.i)
  Owlsi <- Owls[Owls$Nest==nest.i,]
  YourFileName <- paste(nest.i, ".jpg", sep = "")
  jpeg(file = YourFileName)
  plot(x = Owlsi$SiblingNegotiation, y = Owlsi$ArrivalTime,
       xlab = 'SiblingNegotiation', 
       ylab= 'ArrivalTime',
       main = nest.i)
  dev.off()
}