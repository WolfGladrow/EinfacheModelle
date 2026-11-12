print('file: R_LogAbb1d8.R')
print(date())
print(R.Version()$version.string)
# Ziel: Iteration der logistischen Abbildung
# Version: 12.11. 2026 Dieter.Wolf-Gladrow@awi.de 
print(' ----------------------------------------------------')
L = 30; L1 = L-1 # L = Anzahl der Iterationen
x1=numeric(L)
xt=seq(1,L) # Zeitpunkte, Generationen
x1[1]=0.1   # Anfangswert
r1=1.8      # Wachstumsparameter
for(t in 1:L1) x1[t+1] = r1*x1[t]*(1-x1[t]) # log. Abb.
print(' ----------------------------------------------------')
print(' Plot:')
print(' ----------------------------------------------------')
sflag = 1; rflag = 1      # rflag = 1 -> add some numbers
library(latex2exp)
if (sflag == 1) { # r1=1.8
# png('Log1d8r261110.png',width=16,height=12,units='cm',res=300)
plot(xt,x1,type='l',lwd=1,col='green',
         xlab='t',ylab=TeX('$x_t$'),las=1,cex=0.4,ylim=c(0,1))
points(xt,x1,lwd=1,col='blue',pch=8,cex=0.8)
text(xt[L/2]-4,0.2,paste('r = ',as.character(r1)),col='blue')
if(rflag == 1) {
xmax=x1[L]; xmin=x1[L-1]
text(19,xmax+0.12,TeX('$x_{30} = $'),col='blue',pos=4)
text(19+3.3,xmax+0.12,as.character(round(xmax,4)),col='blue',pos=4)
} # Ende rflag
# dev.off()
} # Ende sflag
print(' ----------------------------------------------------')