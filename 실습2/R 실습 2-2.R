x=seq(-2, 2, 0.001)
y=c()
for(i in 1:length(x))
{
  if(x[i]<=0) y[i]=-x[i]^3
  if(0<x[i] & x[i]<=1) y[i]=x[i]^2
  if(x[i]>1) y[i]=sqrt(x[i])
}
plot(y~x)