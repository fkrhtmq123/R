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

df_movies <- conn$find(query = '{"code" : "171539"}')
View(df_movies)
