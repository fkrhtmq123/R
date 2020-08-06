#날짜 : 2020/08/06
#이름 : 김동욱
#내용 : R 데이터분석 상관분석 실습하기

install.packages("corrplot")
install.packages("corrgram")

library(corrplot)
library(corrgram)

df_product <- read.csv('../file/product.csv')

#변수간 상관계수 확인
cor(df_product$제품_친밀도, df_product$제품_적절성)
cor(df_product$제품_친밀도, df_product$제품_만족도)
cor(df_product$제품_적절성, df_product$제품_만족도)

#상관계수 행렬
cor(df_product, method = 'pearson')

#상관계수 시각화
pairs(df_product)
corrgram(df_product, upper.panel = panel.conf)
corrgram(df_product, lower.panel = panel.conf)

#도전 붓꽃데이터 상관분석
View(iris)

df_iris <- iris %>% select(-Species)

cor(df_iris$Sepal.Length, df_iris$Petal.Length)
cor(df_iris$Sepal.Width, df_iris$Petal.Width)

library(ggplot2)
ggplot(data = df_iris)