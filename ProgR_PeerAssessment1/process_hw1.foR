x <- 4L
class(x)
x <- c(4, "a", TRUE)
class(x)
x <- c(1,3, 5)
y <- c(3, 2, 10)
rbind(x, y)
dim(rbind(x, y))
x <- list(2, "a", "b", TRUE)
x[[2]]
class(x[[2]])
typeof(x[[2]])
x<-1:4
y<-2:3
x+y
x <- c(3, 5, 1, 10, 12, 6)
x
mydata <- read.csv("./hw1_data.csv")
head(mydata)
nrow(mydata)
tail(mydata)
mydata[47,]
is.na(mydata[1,])
is.na(mydata[,1])
table(is.na(mydata[,1]))
bad <- is.na(mydata[,1])
mydata[!bad, 1]
mean(mydata[!bad, 1])
mydata <- read.csv("./hw1_data.csv")
mydata[ mydata$Ozone >31 & mydata$Temp>90,]

sola <- mydata[ mydata$Ozone >31 & mydata$Temp>90,]
bad <- is.na(sola[,2])
mean(sola[!bad, 2])
mydata[ mydata$Month == 6,]
tem <- mydata[ mydata$Month == 6,]
is.na(tem[,4])
bad <- is.na(tem[,4])
mean(tem[!bad, 4])

Oz <- mydata[ mydata$Month == 5,]
max(Oz[,1])
max.col(Oz[,1])
bad <- is.na(Oz[,2])
max(Oz[!bad, 1])
mydata[ identical(mydata$Month, as.numeric(6)),]
