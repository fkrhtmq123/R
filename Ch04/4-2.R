#날짜 : 2020/08/03
#이름 : 김동욱
#내용 : 교재 p122 제어문과 함수

#함수 정의
plus <- function(a, b) {
  c <- a + b
  return(c)
}

minus <- function(a, b) {
  return(a - b)
}

#함수 호출
r1 <- plus(1, 2)
r2 <- plus(2, 3)
r3 <- minus(1, 2)
r4 <- minus(2, 3)

r1
r2
r3
r4

#내장함수
abs(-5)
sqrt(9)
ceiling(2.1)
floor(2.1)
round(2.1)
round(2.9)
factorial(5)
factorial(10)

#통계함수
v1 <- c(1, 2, 3, 4, 5)
v1

v2 <- c(1:10)
v2

min(v1)
max(v2)
range(v2)
sum(v2)
mean(v2)
median(v2)
