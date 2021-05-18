setwd('C:\\Users\\PC\\Desktop\\BaiTapR\\ll')
Benthic = read.table('RIKZ.txt', header = TRUE)
names(Benthic)
str(Benthic)
Species = Benthic[,2:76]
Species
names(Species)
str(Species)
# ki???m tra dimenstions -  chi???u c???a bi???n Species
n = dim(Species)
n # s??? dòng s??? c???t
# 45 dòng tuong ???ng v???i 45 sites- v??? trí thu th???p m???u v???t
# Tuong ???ng v???i m???i v??? trí thì s??? ghi nh???n du???c voi nhung loai sinh vat bien nao
# co bao nhieu loai sinh vat bien o vi tri 1
sum(Species[1,], na.rm = TRUE)
# ket qua 143 loai sinh vat bien xuat hien o site 1
sum(Species[2,], na.rm = TRUE)
# ... lam 45 lan de kiem tra so luong sinh vatbien xuat hien tai cac sites
TA <- vector(length = n[1])
for (i in 1:n[1]) {
  TA[i] <- sum(Species[i,], na.rm =TRUE)
}
TA


TA02 <- rowSums(Species, na.rm = TRUE)
TA02


# di vao chi tiet tai tung vi tri quan sat
sum(Species[1,]>0, na.rm = TRUE)
#ket qua chung ta co 11 loai khac nhau cuat hien


Richness <- vector(length=n[1])
for (i in 1:n[1]) {
  Richness[i] <- sum(Species[i,]>0, na.rm =TRUE)
}
Richness

Richness02 =  rowSums(Species>0, na.rm = TRUE)
Richness02


# chi so da dang loai



RS = rowSums(Species, na.rm=TRUE)
prop <-  Species/RS
H <- -rowSums(prop * log10(prop), na.rm =TRUE)
H

# k???t h???p l???i h???t nh???ng gì dã làm vô 1 hàm c???a riêng mình
# d??? sau này s??? d???ng l???i d??? phân tích nh???ng d??? li???u tuong t???

Choice <- 'Richness'
Index.function <- function(Spec, Choice){
  if (Choice=='Richness') {
    Index = rowSums(Species>0, na.rm =TRUE)
  }
  if (Choice=="Total Abundance") {
    Index = rowSums(Species, na.rm = TRUE)
  }
  if (CHoice=="shannon") {
    RS =  rowSums(Species, na.rm = TRUE)
    prop <- Species /RS
    Index = -rowSums(prop * log10(prop), na.rm =TRUE)
  }
  list(Index=Index, MyChoice= Choice)
}

