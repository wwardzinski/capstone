data = temp_hist5$Avg[which (Year %/% 10 ==193 | Year %/% 10 ==197)]
> data
[1] 13.3 12.8 12.8 13.1 13.0 10.2 13.2 13.5 12.4 12.5 12.5 13.0 14.0 12.0 10.4 17.2 11.8 15.4 15.2 13.2
> groups = c(rep(193,10),rep(197,10))
> groups
[1] 193 193 193 193 193 193 193 193 193 193 197 197 197 197 197 197 197 197 197 197
anova_one = as.data.frame((cbind(data, groups)))
anova_one$groups = as.factor(anova_one$groups)
s=aov(data~groups, anova_one)
summary(s)
Df Sum Sq Mean Sq F value Pr(>F)
groups       1   3.12   3.120   1.265  0.276
Residuals   18  44.42   2.468               

p=0.276 There is no significant difference.

# Kruskal-Wallis rank sum test
kruskal.test(Month ~ Avg, data=temp_hist)

Kruskal-Wallis rank sum test

data:  Month by Avg
Kruskal-Wallis chi-squared = 574.21, df = 368, p-value = 3.045e-11

kruskal.test(AvgMM10YY(5,199),AvgMM10YY(5,190), alternative = 'two.sided', paired=TRUE)

Kruskal-Wallis rank sum test

data:  AvgMM10YY(5, 199) and AvgMM10YY(5, 190)
Kruskal-Wallis chi-squared = 8.5091, df = 8, p-value = 0.3854
