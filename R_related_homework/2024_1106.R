
# question1 ---------------------------------------------------------------


# mysamplesize = 15
mysamplesize = 115
alpha = 0.05
mytheta = 1
mysample = rexp(mysamplesize, rate = 1) + mytheta
mymle = sort(mysample)[1]
bootstrapsize = 1000
bootstrapestimates = rep(0, bootstrapsize)
for (ii in 1:bootstrapsize) {
    bootstrapsample = rexp(mysamplesize, rate = 1) + mymle
    bootstrapestimates[ii] = sort(bootstrapsample)[1]
}
bootstrapquantiles = sort(bootstrapestimates - mymle)
lowerquantile = bootstrapquantiles[round(bootstrapsize*alpha*0.5)]
upperquantile = bootstrapquantiles[round(bootstrapsize*(1-alpha*0.5))]
lowerbound = mymle - upperquantile
upperbound = mymle - lowerquantile
lowerbound
upperbound


# question2 ---------------------------------------------------------------

# 步骤相同，只需要把极大似然估计替换为矩估计
mymomentestimation = mean(mysample) - 1
bootstrapsize = 1000
bootstrapestimates = rep(0, bootstrapsize)
for (ii in 1:bootstrapsize){
    bootstrapsample = rexp(mysamplesize, rate = 1) + mymomentestimation
    bootstrapestimates[ii] = mean(bootstrapsample) - 1
}
bootstrapquantiles = sort(bootstrapestimates-mymomentestimation)
lowerquantile = bootstrapquantiles[round(bootstrapsize*alpha*0.5)]
upperquantile = bootstrapquantiles[round(bootstrapsize*(1-alpha*0.5))]
lowerbound = mymomentestimation - upperquantile
upperbound = mymomentestimation - lowerquantile
lowerbound
upperbound
