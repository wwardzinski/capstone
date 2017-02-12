install.packages("swirl")
library(swirl)
swirl()
getwd()
setwd("c:....")

temp_hist_all <- read.csv(file="C:/INSTALLS/R/CAPSTONE/eng-monthly-011889-122006.csv", header=TRUE, sep=",")
head (temp_hist_all)
# create subset 
temp_hist <- temp_hist_all[,2:8]
colnames(temp_hist) <- c("Year","Month","MaxTemp","MinTemp","Avg","MaxExt","MinExt")
head(temp_hist)
# select march temp in Year 190x
head(subset(temp_hist, Month==5 & Year%/%10==190),20)
T_5_190 <- as.list(subset(temp_hist, Month==5 & Year%/%10==190)['Avg'])
T_5_191 <- as.list(subset(temp_hist, Month==5 & Year%/%10==191)['Avg'])
T_5_191[2,1]
mean(subset(temp_hist, Month==5 & Year%/%10==190)['Avg']$Avg)
class(x)
x <-c(T_5_191$Avg)
x <-c(as.list(subset(temp_hist, Month==5 & Year%/%10==190)['Avg'])$Avg)
x <- temp_hist$Avg[which(temp_hist$Month==5 & temp_hist$Year%/%10==190)]
class(x)
AvgMM10YY <- function (mm,decade) { 
  + temp_hist$Avg[which(temp_hist$Month == mm & temp_hist$Year%/%10 == decade)] }
AvgMM10YY(5,190)
# [1] 11.8 13.8 12.1 15.0 15.0 12.3 11.4  9.0 14.5 12.0
AvgMM10YY(5,191)
# [1] 12.3 17.3 13.5 12.1 15.3 11.1 12.3  9.4 14.2 13.0
AvgMM10YY(5,192)
# [1] 13.6 15.6 15.6 11.6  9.8 10.5 11.1 11.8 12.0 11.5
attach(temp_hist)
hist(temp_hist$Avg)  # not normally distributed
colnames(temp_hist)
boxplot(temp_hist$Avg ~ temp_hist$Month)  #  winter months have more fluctuations
plot(Month,Avg)
# Analyze temperature pattern in decades
x <- c(1:10)  
y <- AvgMM10YY(5,198)
plot(x~y)
plot(x,y)
cord <- lm(y~x)
abline(cord)
cord

lm(formula = Avg~Year, data=subset(temp_hist, Month==5))
2000 * 0.006644 -0.045150

lm(formula = Avg~Year, data=subset(temp_hist, Month==5 & Year > 1970))
2000 * 0.007941 -2.270832

temp_hist5 <- subset(temp_hist, Month==5 & Year >= 2000)  # create subset for May
plot(temp_hist5$Year, temp_hist5$Avg)
lm.avg <- lm (temp_hist5$Avg ~ temp_hist5$Year)
lm.avg
abline( lm (temp_hist5$Avg ~ temp_hist5$Year) )
fitted(lm.avg)  # predicted Avg temperatures
resid(lm.avg)
sum (abs (temp_hist5$Avg - (temp_hist5$Year * 0.006644 -0.045150)))/nrow(temp_hist5) # error

temp_hist5_gt70 <- subset(temp_hist, Month==5 & Year >=1970)  # create subset for May
