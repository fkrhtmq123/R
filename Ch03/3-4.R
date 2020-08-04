#날짜 : 2020/08/04
#이름 : 김동욱
#내용 : 교재 p176 dplyr 패키지 실습하기기

#패키지설치
install.packages("dplyr")
library(dplyr)

df_exam <- read.csv('../file/exam.csv')

#select
df_math    <- df_exam %>% select(math)
df_english <- df_exam %>% select(english)
df1        <- df_exam %>% select(math, science)
df2        <- df_exam %>% select(everything())

df_math
df_english
df1
df2

#filter
#arrange
#mutate
#summarise
#group_by
#left_join