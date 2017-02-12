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