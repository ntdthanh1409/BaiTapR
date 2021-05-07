setwd("D:/R/23.4.2021")
owls<-read.table(file = "Owls.txt", header = TRUE)
owls
names(owls)
str(owls)
unique(owls$Nest)         #Có 27 lo???i Nest

#V??? bi???u d??? cho t???ng lo???i Nest
owls.ATV <- owls[owls$Nest=="AutavauxTV",]
plot(x=owls.ATV$ArrivalTime,
     y=owls.ATV$NegPerchick,
     xlab="Arival Time",
     main="AutavauxTV",
     ylab = "Negotiation behaviour")
owls.Bot <- owls[owls$Nest=="Bochet",]
plot(x=owls.ATV$ArrivalTime,
     y=owls.ATV$NegPerchick,
     xlab="Arrival Time",
     main="Bochet",
     ylab = "Negotiation behaviour")

AllNests<-unique(owls$Nest)
for (i in 1:27) {
  Nest.i <- AllNests[i]
  owls.i <- owls[owls$Nest==Nest.i,]
  YourFileName <- paste(Nest.i, ".jpg", sep = "")
  jpeg(file=YourFileName)
  plot(x=owls.i$ArrivalTime, 
       y= owls.i$NegPerchick,
       xlab="Arrival Time",
       main="Bochet",
       ylab = "Negotiation behaviour"
  )
  dev.off()
}