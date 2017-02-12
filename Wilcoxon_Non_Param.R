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
  