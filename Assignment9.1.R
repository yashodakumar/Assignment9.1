#Answer 1

#P(Z > 2.64)
#We need to take the whole of the right hand side (area 0.5) 
#and subtract the area from z = 0 to z = 2.64, which we get from the z-table.

#the probability value of z =2.64 in table is 0.4959
#so P(Z > 2.64)=0.5-P( 0 < z < 2.64)=0.5-0.4959=0.0041

#or we can do like this
1 - pnorm(2.64, mean=0, sd=1)
#0.004145301

#P(|Z| > 1.39)
#we can find by pnorm function too
pnorm(1.39)
#0.9177356

pnorm(-1.39)
#0.08226444

#1-(pnorm(1.39)-pnorm(-1.39))
#1-(0.9177356-0.08226444)
#1-0.8354712
#0.1645288 #answer

#or by this
#1 - P(-1.39<X<1.39)
#The probability for z = 1.39 is 0.4177; the probability for z = -1.39 is 0.4177 hence The
#solution of P (-1.39<X<1.39) is obtained by summing the probabilities.
# 0.4177 (probability of a value between the mean and 1.39) +
# 0.4177 (probability of a value between the mean and -1.39) 
# 0.8354 (probability of a value between -1.39 and 1.39)

#thus our final answer would be 1 - P(-1.39<X<1.39)
#which is 1-0.8354
#0.1646



#Answer 2

#to check for wheather there is consistency with the officers claim or do they provide evidence 
#that the acceptance rate was significantly less than 40% 
#thus defining the null hypo as Ho:p is equal to 0.40
#and Ha:p less than 0.40

#Ho :  p = 0.4
#Ha :  p < 0.4
#alpha = 0.01   
#Thus to find we use qnorm() function 

-qnorm(0.99)

#-2.326348

#Now to find out our test statistic
newucb_data <- as.data.frame(UCBAdmissions)
View(newucb_data)
dim(newucb_data)
summary(newucb_data$Admit)
phat <- 12/(24)
t <- (phat-0.4)/sqrt(0.4*0.6/(24))
t
#1

#by calculations it is clear that our test statistic is not less than -2.326348 
#So we accept our null hypothesis Ho
#hence we say that the observed data are consistent with the officer's claim at alpha = 0.01(Level of Significance)