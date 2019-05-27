library(gutenbergr)

shuihuzhuan <- gutenberg_download(23863)$text # 水滸傳
sanguozhiyanyi <- gutenberg_download(23950)$text # 三國志演義
xiyouji <- gutenberg_download(23962)$text # 西遊記
hongloumeng <- gutenberg_download(24264)$text # 紅樓夢

yushimingyan <- gutenberg_download(27582)$text # 喻世明言
jingshitongyan <- gutenberg_download(24141)$text # 警世通言
xingshihengyan <- gutenberg_download(24239)$text # 醒世恆言

usethis::use_data(shuihuzhuan, overwrite = TRUE)
usethis::use_data(sanguozhiyanyi, overwrite = TRUE)
usethis::use_data(xiyouji, overwrite = TRUE)
usethis::use_data(hongloumeng, overwrite = TRUE)
usethis::use_data(yushimingyan, overwrite = TRUE)
usethis::use_data(jingshitongyan, overwrite = TRUE)
usethis::use_data(xingshihengyan, overwrite = TRUE)
