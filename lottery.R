setwd("~/Desktop/R_practice")

library(data.table)
#產生一組
x1 <- sample(1:49, 7, replace = T)

#產生1000組
R <- 1000
result <- matrix(0,nrow=R,ncol=7)

for (i in 1:R) {
  x1 <- sample(1:49, 7, replace = F)
  result[i,1] <-x1[1]
  result[i,2] <-x1[2]
  result[i,3] <-x1[3]
  result[i,4] <-x1[4]
  result[i,5] <-x1[5]
  result[i,6] <-x1[6]
  result[i,7] <-x1[7]
}
result_1<-unique(result)

#another way with Matrix
n <- 1000
m <- matrix(1:49, ncol = n, nrow = 49)
pull <- unique(apply(m, 2, sample, 7, replace = FALSE))


#對獎
result_check <- as.data.table(result_1)

result_check$S1<- ifelse(result_check$V1 ==42, 1, 0)
result_check$S2<- ifelse(result_check$V2 ==42, 1, 0)
result_check$S3<- ifelse(result_check$V3 ==42, 1, 0)
result_check$S4<- ifelse(result_check$V4 ==42, 1, 0)
result_check$S5<- ifelse(result_check$V5 ==42, 1, 0)
result_check$S6<- ifelse(result_check$V6 ==42, 1, 0)
result_check$S7<- ifelse(result_check$V7 ==42, 1, 0)

result_check$C1_1<- ifelse(result_check$V1 == 3, 1, 0)
result_check$C1_2<- ifelse(result_check$V2 == 3, 1, 0)
result_check$C1_3<- ifelse(result_check$V3 == 3, 1, 0)
result_check$C1_4<- ifelse(result_check$V4 == 3, 1, 0)
result_check$C1_5<- ifelse(result_check$V5 == 3, 1, 0)
result_check$C1_6<- ifelse(result_check$V6 == 3, 1, 0)
result_check$C1_7<- ifelse(result_check$V7 == 3, 1, 0)

result_check$C2_1<- ifelse(result_check$V1 == 7, 1, 0)
result_check$C2_2<- ifelse(result_check$V2 == 7, 1, 0)
result_check$C2_3<- ifelse(result_check$V3 == 7, 1, 0)
result_check$C2_4<- ifelse(result_check$V4 == 7, 1, 0)
result_check$C2_5<- ifelse(result_check$V5 == 7, 1, 0)
result_check$C2_6<- ifelse(result_check$V6 == 7, 1, 0)
result_check$C2_7<- ifelse(result_check$V7 == 7, 1, 0)

result_check$C3_1<- ifelse(result_check$V1 == 15, 1, 0)
result_check$C3_2<- ifelse(result_check$V2 == 15, 1, 0)
result_check$C3_3<- ifelse(result_check$V3 == 15, 1, 0)
result_check$C3_4<- ifelse(result_check$V4 == 15, 1, 0)
result_check$C3_5<- ifelse(result_check$V5 == 15, 1, 0)
result_check$C3_6<- ifelse(result_check$V6 == 15, 1, 0)
result_check$C3_7<- ifelse(result_check$V7 == 15, 1, 0)

result_check$C4_1<- ifelse(result_check$V1 == 16, 1, 0)
result_check$C4_2<- ifelse(result_check$V2 == 16, 1, 0)
result_check$C4_3<- ifelse(result_check$V3 == 16, 1, 0)
result_check$C4_4<- ifelse(result_check$V4 == 16, 1, 0)
result_check$C4_5<- ifelse(result_check$V5 == 16, 1, 0)
result_check$C4_6<- ifelse(result_check$V6 == 16, 1, 0)
result_check$C4_7<- ifelse(result_check$V7 == 16, 1, 0)

result_check$C5_1<- ifelse(result_check$V1 == 18, 1, 0)
result_check$C5_2<- ifelse(result_check$V2 == 18, 1, 0)
result_check$C5_3<- ifelse(result_check$V3 == 18, 1, 0)
result_check$C5_4<- ifelse(result_check$V4 == 18, 1, 0)
result_check$C5_5<- ifelse(result_check$V5 == 18, 1, 0)
result_check$C5_6<- ifelse(result_check$V6 == 18, 1, 0)
result_check$C5_7<- ifelse(result_check$V7 == 18, 1, 0)

result_check$C6_1<- ifelse(result_check$V1 == 41, 1, 0)
result_check$C6_2<- ifelse(result_check$V2 == 41, 1, 0)
result_check$C6_3<- ifelse(result_check$V3 == 41, 1, 0)
result_check$C6_4<- ifelse(result_check$V4 == 41, 1, 0)
result_check$C6_5<- ifelse(result_check$V5 == 41, 1, 0)
result_check$C6_6<- ifelse(result_check$V6 == 41, 1, 0)
result_check$C6_7<- ifelse(result_check$V7 == 41, 1, 0)

result_check$special <-result_check$S1 +result_check$S2 + result_check$S3 + result_check$S4 + result_check$S5 + result_check$S6 + result_check$S7 
result_check$C1 <-result_check$C1_1 +result_check$C1_2 + result_check$C1_3 + result_check$C1_4 + result_check$C1_5 + result_check$C1_6 + result_check$C1_7
result_check$C2 <-result_check$C2_1 +result_check$C2_2 + result_check$C2_3 + result_check$C2_4 + result_check$C2_5 + result_check$C2_6 + result_check$C2_7
result_check$C3 <-result_check$C3_1 +result_check$C3_2 + result_check$C3_3 + result_check$C3_4 + result_check$C3_5 + result_check$C3_6 + result_check$C3_7
result_check$C4 <-result_check$C4_1 +result_check$C4_2 + result_check$C4_3 + result_check$C4_4 + result_check$C4_5 + result_check$C4_6 + result_check$C4_7
result_check$C5 <-result_check$C5_1 +result_check$C5_2 + result_check$C5_3 + result_check$C5_4 + result_check$C5_5 + result_check$C5_6 + result_check$C5_7
result_check$C6 <-result_check$C6_1 +result_check$C6_2 + result_check$C6_3 + result_check$C6_4 + result_check$C6_5 + result_check$C6_6 + result_check$C6_7
result_check$check <- result_check$C1 +result_check$C2 +result_check$C3 +result_check$C4 +result_check$C5 +result_check$C6
result_check$money <- 0
result_check$money [result_check$special ==0 & result_check$check ==6] <- 100000000
result_check$money [result_check$special ==1 & result_check$check ==5] <- 2676755
result_check$money [result_check$special ==0 & result_check$check ==5] <- 49701
result_check$money [result_check$special ==1 & result_check$check ==4] <- 11728
result_check$money [result_check$special ==0 & result_check$check ==4] <- 2000
result_check$money [result_check$special ==1 & result_check$check ==3] <- 1000
result_check$money [result_check$special ==0 & result_check$check ==3] <- 400
result_check$money [result_check$special ==1 & result_check$check ==2] <- 400

sum(result_check$money)
