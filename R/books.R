#' Data frame of Ming and Qing novels
#'
#' Returns a data frame of Ming and Qing novels with
#' only 2 columns: \code{text}, which contains the text,
#' and \code{book}, which contains the titles.
#'
#' @return A data frame with two columns: \code{text} and \code{book}
#' @name books
#' @examples
#' library(dplyr)
#'
#' books() %>% group_by(book) %>%
#'     summarise(total_lines = n())
#'
#' @export
books <- function(){
  titles <- list(
    '水滸傳' = mqxsr::shuihuzhuan,
    '三國志演義' = mqxsr::sanguozhiyanyi,
    '西遊記' = mqxsr::xiyouji,
    '紅樓夢' = mqxsr::hongloumeng
  )
  ret <- data.frame(text = unlist(titles, use.names = FALSE),
                    stringsAsFactors = FALSE)
  ret$book <- factor(rep(names(titles), sapply(titles, length)))
  ret$book <- factor(ret$book, levels = unique(ret$book))
  structure(ret, class = c("tbl_df", "tbl", "data.frame"))
}
