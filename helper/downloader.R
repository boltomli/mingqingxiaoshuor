library(gutenbergr)

shuihuzhuan <- gutenberg_download(23863)$text #水滸傳
sanguozhiyanyi <- gutenberg_download(23950)$text #三國志演義
xiyouji <- gutenberg_download(23962)$text #西遊記
hongloumeng <- gutenberg_download(24264)$text #紅樓夢

usethis::use_data(shuihuzhuan, overwrite = TRUE)
usethis::use_data(sanguozhiyanyi, overwrite = TRUE)
usethis::use_data(xiyouji, overwrite = TRUE)
usethis::use_data(hongloumeng, overwrite = TRUE)
