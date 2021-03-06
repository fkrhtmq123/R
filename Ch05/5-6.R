#날짜 : 2020/08/04
#이름 : 김동욱
#내용 : 교재 p290 데이터시각화 - 지도 시각화

library('ggmap')

register_google(key = 'AIzaSyBrkMiFk4KP89zVAkrefQdzTiiGAucTcAY')

names <- c('용두암',
           '성산일출봉', 
           '정방폭포', 
           '중문관광단지', 
           '한라산 1100고지',
           '차귀도')

addr <- c('제주도 용두암길 15',
          '서귀포시 성산읍 성산리',
          '서귀포시 동흥동 299-3',
          '서귀포시 중문동 2624-1',
          '서귀포시 색달동 산1-2',
          '제주시 한경면 고산리 125')

gc <- geocode(enc2utf8(addr))
gc

#데이터 프레임 생성
df_jeju <- data.frame(name = names, lon = gc$lon, lat = gc$lat)
View(df_jeju)

#센터 좌표 생성
jeju_center <- c(mean(df_jeju$lon), mean(df_jeju$lat))
jeju_center

#지도 생성
map <- get_googlemap(center = jeju_center,
                     maptype = 'roadmap',
                     zomm = 10,
                     size = c(640, 640),
                     markers = gc)

#지도 출력
ggmap(map)

