# C�u 1
answer <- 0
for (j in 3:5){ answer <- j+answer }

answer<- 10
for (j in 3:5){ answer <- j+answer }

answer <- 10
for (j in 3:5){ answer <- j*answer }

# C�u 2
answer <- 10
a <- prod(3:5)*answer
a

# C�u 3
answer <- 0
for (j in 1:100){ answer <- j+answer }

sum(1:100)

# C�u 4
answer <- 1
for (j in 1:50){ answer <- j*answer }

answer <- 1
a <- prod(1:50)*answer
a

# C�u 5
radious <- 3:20
volume <- (4*pi*radious^3)/3
conversion <- data.frame(Celsius=radious, Fahrenheit=volume)
print(conversion)

# C�u 6
factor_day <- factor(conversion, order = TRUE, levels =c('radius','volume'))
factor_day
sapply(conversion,length)
sapply(conversion,sum)
sapply(conversion,mean)
sapply(conversion,cumsum)
sapply(conversion,factor)
