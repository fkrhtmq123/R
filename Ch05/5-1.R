#날짜 : 2020/08/04
#이름 : 김동욱
#내용 : 교재 p201 데이터 전처리 - 결측치 처리

library(dplyr)

#결측치(누락값) 처리하기
df_exam <- read.csv('../file/csv_exam_na.csv')
View(df_exam)

is.na(df_exam)

#결측치를 갖는 행 제거
df_exam_new <- df_exam %>% filter(!is.na(math) & !is.na(english) & !is.na(science))
is.na(df_exam_new)

#기본 통계 분석
df_exam_new %>% mutate(total = math+english+science, mean=total / 3) %>% arrange(desc(total))
