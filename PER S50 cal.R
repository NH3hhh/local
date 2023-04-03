
setwd("~/UYSD_Backup_1/Sweetness-sorbitol/sorbitol data and plan/PER S50 calculation")

#define the PER function
per=function(s,a,s50){100/(1+exp(1)^(-a*log2(s/s50)))}
#load data
data1=read.csv("Figure_supp.csv",header=T)
attach(data1)
nls(y1~per(s,a,s50),start=list(a=1,s50=50),control=list(maxtier=100),trace=T)
nls(y2~per(s,a,s50),start=list(a=1,s50=50),control=list(maxtier=100),trace=T)
nls(y3~per(s,a,s50),start=list(a=1,s50=50),control=list(maxtier=100),trace=T)

