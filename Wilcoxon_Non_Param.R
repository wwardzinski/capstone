Group1 = temp_hist5$Avg[which (Year>=1970 & Year < 1980)]
Group2 = temp_hist5$Avg[which (Year>=1900 & Year < 1910)]
ranks_Group1 = rank(cbind(Group1, Group2))[1:10]
ranks_Group2 = rank(cbind(Group1, Group2))[11:20]
n1=length(Group1)
n2=length(Group2)
U1 = n1*n2 + ((n1*(n1+1)/2) - sum(ranks_Group1))
U2 = n1*n2 + ((n1*(n1+1)/2) - sum(ranks_Group2))
U1
# [1] 38
U2
# [1] 62
U= min(U1,U2)
alpha = 0.05
critical_value = qwilcox(alpha/2,n1,n2) - 1
critical_value
# [1] 23
U
# [1] 38
# since U > critical_values - DO NOT REJECT THE NULL HYPOTHESIS - There is no significant difference in temperatures



t.test(AvgMM10YY(5,200), alternative = 'two.sided', mu=12.89744)

# One Sample t-test

# data:  AvgMM10YY(5, 200)
# t = 0.87596, df = 6, p-value = 0.4147
# alternative hypothesis: true mean is not equal to 12.89744
# 95 percent confidence interval:
#  12.12424 14.53290
# sample estimates:
#  mean of x 
# 13.32857  

t.test(c(AvgMM10YY(5,199),AvgMM10YY(5,198)), alternative = 'two.sided', mu=12.89744)

One Sample t-test

data:  c(AvgMM10YY(5, 199), AvgMM10YY(5, 198))
t = 1.6552, df = 19, p-value = 0.1143
alternative hypothesis: true mean is not equal to 12.89744
95 percent confidence interval:
  12.72218 14.39782
sample estimates:
  mean of x 
13.56 

# Two sample T-test
t.test(AvgMM10YY(5,195),AvgMM10YY(5,199), alternative = 'two.sided', paired=TRUE)

Paired t-test

data:  AvgMM10YY(5, 195) and AvgMM10YY(5, 199)
t = -1.7958, df = 9, p-value = 0.1061
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
  -3.1635801  0.3635801
sample estimates:
  mean of the differences 
-1.4 
#############################################################
Group1 = sort(temp_hist5$Avg[which (Year>=1970 & Year < 1980)])
Group2 = sort(temp_hist5$Avg[which (Year>=1920 & Year < 1930)])
ranks_Group1 = rank(cbind(Group1, Group2))[1:10]
ranks_Group2 = rank(cbind(Group1, Group2))[11:20]
n1=length(Group1)
n2=length(Group2)
U1 = n1*n2 + ((n1*(n1+1)/2) - sum(ranks_Group1))
U2 = n1*n2 + ((n1*(n1+1)/2) - sum(ranks_Group2))
U1
# [1] 38
U2
# [1] 62
U= min(U1,U2)
alpha = 0.05
critical_value = qwilcox(alpha/2,n1,n2) - 1
critical_value
# [1] 23
U
# [1] 38
# since U > critical_values - DO NOT REJECT THE NULL HYPOTHESIS - There is no significant difference in temperatures

