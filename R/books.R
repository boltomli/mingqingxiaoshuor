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
    '\u6c34\u6ef8\u50b3' = mqxsr::shuihuzhuan,
    '\u4e09\u570b\u5fd7\u6f14\u7fa9' = mqxsr::sanguozhiyanyi,
    '\u897f\u904a\u8a18' = mqxsr::xiyouji,
    '\u7d05\u6a13\u5922' = mqxsr::hongloumeng
  )
  ret <- data.frame(text = unlist(titles, use.names = FALSE),
                    stringsAsFactors = FALSE)
  ret$book <- factor(rep(names(titles), sapply(titles, length)))
  ret$book <- factor(ret$book, levels = unique(ret$book))
  structure(ret, class = c("tbl_df", "tbl", "data.frame"))
}
