height=read.csv("Pearson.csv");
height=read.table("Pearson.txt", header=TRUE);
data(father.son)
plot(Son ~ Father, data=height,bty="l",pch=20)
abline(a=0,b=1,lty=1,lwd=2)
abline(lm(Son ~ Father, data=height),lty=1,lwd=2)
Father.sd=sd(height$Father);
Son.sd=sd(height$Son);
Father.ave=mean(height$Father);
Son.ave=mean(height$Son);
Pearson.cor=cor(height$Father, height$Son)
#check the distributoin of the two height data using histogram
hist(height$Father)
hist(height$Son)
#check the distributoin of the two height data using kernel density
plot(density(height$Father))
plot(density(height$Son))
#check if the distributoin of th height data follows a normal distribution
qqnorm(height$Father)
qqline(height$Father)
qqnorm(height$Son)
qqline(height$Son)
