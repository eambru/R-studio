library(derivmkts)

print("START---------------------------------------------------------------")
s=4000; k=4000;u1= 1.1; d1=0.9;T=6/12; v=log(u1)/sqrt(T); r=0.12; d=0; nstep=2

binomopt(s, k, v, r, T, d, nstep,specifyupdn=TRUE,up=u1, dn=d1, american=TRUE, putopt=TRUE, returntrees=TRUE)
packageVersion("derivmkts")

