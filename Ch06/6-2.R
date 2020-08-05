#날짜 : 2020/08/05
#이름 : 김동욱
#내용 : R MongoDB 연동

install.packages("mongolite")
library(mongolite)
library(dplyr)

conn <- mongolite::mongo(url = 'mongodb://kdw:1234@192.168.50.82:27017/kdw',
                         db = 'kdw',
                         collection = 'movies',
                         verbose = TRUE,
                         options = ssl_options())

df_movie <- conn$find(query = '{"code" : "171539"}')
View(df_movies)

#특수문자 제거
data_movie <- str_replace_all(df_movie$reple, '\\W', ' ')
View(data_movie)

#명사 추출
data_noun <- extractNoun(data_movie)
View(data_noun)

#명사 단어 집계
word_count <- table(unlist(data_noun))
View(word_count)

#데이터프레임 변환
df_word <- as.data.frame(word_count, stringsAsFactors = F)
View(df_word)

#두 문자 이상 단어만 추출
df_word <- df_word %>% filter(nchar(Var1) >= 2) %>% filter(!is.na(Var1))
View(df_word)

#워드 클라우드 출력
library(wordcloud)
library(RColorBrewer)

pal <- brewer.pal(8, 'Dark2')
set.seed(1)

wordcloud(words = df_word$Var1,
          freq = df_word$Freq,
          min.freq = 10,
          max.words = 1000,
          random.order = F,
          rot.per = 0.7,
          scale = c(4, 0.3),
          colors = pal)

