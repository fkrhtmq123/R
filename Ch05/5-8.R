#날짜 : 2020/08/04
#이름 : 김동욱
#내용 : 텍스트 시각화

install.packages("multilinguer")
library(multilinguer)

install_jdk()
install.packages(c("hash", "tau", "Sejong", "RSQLite", "devtools", "bit", "rex", "lazyeval", "htmlwidgets", "crosstalk", "promises", "later", "sessioninfo", "xopen", "bit64", "blob", "DBI", "memoise", "plogr", "covr", "DT", "rcmdcheck", "rversions"), type = "binary")
install.packages("remotes")

remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))

library(KoNLP)
library(dplyr)
library(stringr)

#형태소 분석을 위한 사전 설정
useNIADic()

#텍스트 파일 데이터 생성
data_song <- readLines('../file/song.txt')
View(data_song)

#특수문자 제거
data_song <- str_replace_all(data_song, '\\W', ' ')
View(data_song)

#명사 추출
data_noun <- extractNoun(data_song)
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
install.packages("wordcloud")
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
