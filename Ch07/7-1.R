#날짜 : 2020/08/05
#이름 : 김동욱
#내용 : R 데이터분석 실습하기

library(dplyr)
library(ggplot2)

df_busan <- read.csv('../file/busan.csv')

#컬럼 한글명 수정
df_busan <- df_busan %>% rename('region'='행정구역별', 'item'='항목')

#출생건수 데이터만 집계
df_busan_birth <- df_busan %>% filter(item=='출생건수 (명)' & region!='부산광역시') %>% select(-item)

#df_busan_birth 데이터프레임으로 부터 새로운 구조의 데이터 프레임 생성
df_new_busan <- data.frame(region=character(), 
                           year=numeric(), 
                           birth=numeric(),
                           stringsAsFactors = F)

for(n in 1:nrow(df_busan_birth)) {
  
  region <- df_busan_birth[n, 'region']
  year <- 2000
  
  for(col in colnames(df_busan_birth)) {
    
    if(col != 'region'){
      birth <- df_busan_birth[n, col]
      
      row <- c(region, year, birth)
      df_new_busan <- rbind(df_new_busan, row)
      
      year <- year + 1
    }
  }
}

#컬럼명 다시 수정
names(df_new_busan) <- c('region', 'years', 'birth')

#데이터 시각화
ggplot(data = df_new_busan, aes(x=years, y=birth, group=region), size=3) + 
  geom_line(aes(color=region)) +  scale_y_continuous(breaks=c(0, 1000, 2000, 3000, 4000))


