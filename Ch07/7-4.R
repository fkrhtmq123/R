#날짜 : 2020/08/06
#이름 : 김동욱
#내용 : R 데이터분석 회귀분석 실습하기

df_product <- read.csv('../file/product.csv')

#독립변수와 종속변수 생성
x <- df_product$제품_적절성
y <- df_product$제품_만족도

df_xy <- data.frame(x, y)

#단순선형회귀 모델생성
result_lm <- lm(formula = y~x, data = df_xy)

#회귀식
simple_linear <- function(x){
  y <- 0.7393 * x + 0.7789
  return(y)
}

#예측
y1 <- simple_linear(1)
y2 <- simple_linear(2)
y3 <- simple_linear(3)
y4 <- simple_linear(4)
y5 <- simple_linear(5)

#다중선형회귀 분석
y <- df_product$제품_만족도  #종속
x1 <- df_product$제품_친밀도 #독립
x2 <- df_product$제품_적절성 #독립

df_xxy <- data.frame(x1, x2, y)

#다중선형회귀 모델생성
result_lm <- lm(formula = y~x1+x2, data = df_xxy)
multi_linear <- function(x1, x2) {
  y <- 0.09594* x1 + 0.68522 * x2 + 0.66731
  return(y)
}


#예측
r1 <- multi_linear(1, 2)
r2 <- multi_linear(2, 3)
r3 <- multi_linear(3, 4)
r4 <- multi_linear(4, 5)
r4 <- multi_linear(5, 5)

#galton 데이터 회귀분석 실습
install.packages("UsingR")
library(UsingR)

data(galton)
View(galton)

result_galton <- lm(galton$child ~ galton$parent, data = galton)

plot(galton$child ~ galton$parent, data = galton) + scale_x_continuous(breaks = seq(60, 72, 1))
abline(result_galton, col='red')
