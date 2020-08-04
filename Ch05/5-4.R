#날짜 : 2020/08/04
#이름 : 김동욱
#내용 : 교재 p237 데이터 시각화 - 기타그래프

library(ggplot2)

#산점도
View(iris) #iris 꽃의 데이터
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + 
  geom_point(aes(colour = Species))

#라인그래프
View(economics) #미국 실업자 데이터
ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()

#박스플롯
View(mpg) #자동차 데이터
summarise(mpg)
summary(mpg)
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

#히스토리그램
hist(iris$Sepal.Width,
     xlim = c(2.0, 4.5),
     xlab = '꽃받침 길이',
     col = 'orange',
     freq = F,
     main = '꽃받침 너비 분포도')


#정규분포라인
lines(density(iris$Sepal.Width), col = 'red')
