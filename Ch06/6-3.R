#날짜 : 2020/08/05
#이름 : 김동욱
#내용 : R hadoop 연동

devtools::install_github(c("saurfang/rwebhdfs"))
library(rwebhdfs)

hdfs <- webhdfs('192.168.100.101', 50070, 'root')

#에러남
df_moviesDF <- read_file(hdfs, '/sample/moviesDF/part-00000-5d283ee2-fe35-490d-a624-5aa0b04dfde9-c000.csv')

