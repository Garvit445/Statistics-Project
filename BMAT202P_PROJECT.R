mydata=read.csv(file.choose())
attach(mydata)
info = data.frame(Player,Mat,Inns,NO,Runs,Ave)
info
above_300=subset(info,info$Inns>=300)
above_300
avg_above38=subset(info,info$Ave>=38)
avg_above38

cor.test(info$Runs,info$Ave,method="pearson")
cor(info$Runs,info$Ave)
model=lm(info$Runs~info$Ave)
summary.lm(model)

input_data = data.frame(Mat,Inns,HS)
input_data
RegModel = lm(Mat~Inns+HS, data = input_data)
RegModel
plot(info$Runs,type="l",main="RUNS SCORED BY PLAYERS”,xlab=”PLAYERS”, ylab = “RUNS”,col = “red”")
summary(Mat)
summary(Inns)
summary(NO)
summary(Runs)
var(Mat)
var(Inns)
var(NO)
var(Runs)
var(Mat,Inns)
var(Ave)
var(BF)
var(SR)
hist(Mat)
hist(Inns)
hist(Runs)

