#날짜 : 2020/08/03
#이름 : 김동욱
#내용 : 교재 p64 R 자료구조 행렬

x <- c(1, 2)
y <- c(3, 4)

#rbind : 행결합
#cbind : 열결합

A <- rbind(x, y)
B <- cbind(x, y)
C <- rbind(c(1,2,3), c(4,5,6))
D <- cbind(c(1,2,3), c(4,5,6))

A
B
C
D

#행렬 성분
A[1, 1]
B[2, 1]
C[1, 3]
D[3, 2]

#matrix() : 행렬 생성
data <- seq(1:9)
data

M1 <- matrix(data, nrow = 3, byrow = FALSE) #열 우선 = cbind
M2 <- matrix(data, nrow = 3, byrow = TRUE)  #행 우선 = rbind
M1
M2

#행렬 연산
A+B
A-B
A%*%B

#역행렬
AI <- solve(A)
AI
E <- AI%*%AI
round(E)
