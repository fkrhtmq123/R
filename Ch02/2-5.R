#³¯Â¥ : 2020/08/03
#ÀÌ¸§ : ±èµ¿¿í
#³»¿ë : ±³Àç p84 R ¹®ÀÚ¿­ Ã³¸®

#R ÆÐÅ°Áö ¼³Ä¡
install.packages("stringr")

#R ÆÐÅ°Áö ·Îµå
library(stringr)

#Á¤±ÔÇ¥Çö½Ä
str <- 'hong25ÀÌ¼ø½Å31Á¤¾à¿ë27'

r1 <- str_extract(str, "[1-9]{2}")
r1

r2 <- str_extract_all(str, "[1-9]{2}")
r2

r3 <- str_extract_all(str, "[a-z]{3}")
r3

r4 <- str_extract_all(str, "[°¡-ÆR]{3}")
r4

r5 <- str_extract_all(str, "[^0-9]{2}")
r5

#¹®ÀÚ¿­ ±æÀÌ
str_length(str)
str_sub(str, 1, 5)
str_replace(str, 'ÀÌ¼ø½Å', 'LeeSoonSin')

#¹®ÀÚ¿­ º¤ÅÍ
str_vec <- c('±èÀ¯½Å', '±èÃáÃß', '°­°¨Âù', 'ÀÌ¼ø½Å')
str_vec

str_collapse <- paste(str_vec, collapse = ',')
str_collapse
