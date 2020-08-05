#날짜 : 2020/08/04
#이름 : 김동욱
#내용 : 교재 p290 데이터 시각화 - 지도 그래프

install.packages("devtools")

devtools::install_github('dkahle/ggmap')
library('ggmap')

register_google(key = 'AIzaSyBrkMiFk4KP89zVAkrefQdzTiiGAucTcAY')

#서울 위치정보 구하기
gc <- geocode("seoul")
gc

seoul <- as.numeric(gc)

#지도 출력
map <- get_googlemap(center = seoul,
                     language = 'ko-KR',
                     color = 'bw',
                     zoom = 15)
ggmap(map, extent = 'device')
