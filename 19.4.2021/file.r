setwd("D:/R/19.4.2021")
veg = read.table(file = "Vegetation2.txt", header = TRUE)
str(veg)
plot(veg$BARESOIL, veg$R)
plot(veg$R, veg$BARESOIL)
plot(x = veg$BARESOIL, y = veg$R)
plot(R~BARESOIL, data = veg)
plot(
veg$Time
TimeGroup = veg$Timex = veg$BARESOIL,  # bien x
     y = veg$R,       # bien y
     xlab = 'Exposed oil',   #tieu de cua x
     ylab = 'Species richness',  #tieu de cua y
     main = 'Scatter plot',  # tieu de cua tieu de
     xlim = c(min(veg$BARESOIL), max(veg$BARESOIL)),   # khoang gia tri cua x 0-45
     ylim = c(min(veg$R), max(veg$R)),  # khoang gia tri cua y 4-19
     pch = 4)
TimeGroup[veg$Time <= 1980] =1

TimeGroup[veg$Time > 1980] =10
plot(x = veg$BARESOIL,  # bien x
     y = veg$R,       # bien y
     xlab = 'Exposed oil',   #tieu de cua x
     ylab = 'Species richness',  #tieu de cua y
     main = 'Scatter plot',  # tieu de cua tieu de
     xlim = c(min(veg$BARESOIL), max(veg$BARESOIL)),   # khoang gia tri cua x 0-45
     ylim = c(min(veg$R), max(veg$R)),  # khoang gia tri cua y 4-19
     pch = 4)

x = 1:8
plot(x,col=x)

plot(x = veg$BARESOIL,  # bien x
     y = veg$R,       # bien y
     xlab = 'Exposed oil',   #tieu de cua x
     ylab = 'Species richness',  #tieu de cua y
     main = 'Scatter plot',  # tieu de cua tieu de
     xlim = c(min(veg$BARESOIL), max(veg$BARESOIL)),   # khoang gia tri cua x 0-45
     ylim = c(min(veg$R), max(veg$R)),  # khoang gia tri cua y 4-19
     pch = 4,col=3,cex=1.5)

CexSize <-veg$Time
CexSize[veg$Time<=1980] <- 1
CexSize[veg$Time>1980] <- 2
plot(x=veg$BARESOIL, #bi???n x
     y=veg$R, #bi???n y
     xlab="Exposed soil",  #tiêu d??? c???a x
     ylab = "Species richness", #tiêu d??? c???a y
     main="Scatter plot", #tiêu d??? c???a d??? th???
     xlim=c(min(veg$BARESOIL), max(veg$BARESOIL)), #kho???ng giá tr??? c???a x 0-45
     ylim=c(min(veg$R), 
            max(veg$R)), 
     pch=TimeGroup, 
     col=1,
     cex=CexSize) #Kho???ng giá tr??? c???a y
veg1 <- loess(R~BARESOIL, data=veg)
fit <- fitted(veg1)
lines(veg$BARESOIL, fit)