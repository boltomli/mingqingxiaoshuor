# tests for books function
context('books')

suppressPackageStartupMessages(library(dplyr))

test_that('data frame for books is correct', {
  res <- books() %>%
    group_by(book) %>%
    summarise(total_lines = n())

  # 2 columns so far
  expect_equal(ncol(res), 2)

  # 7 books now
  expect_equal(nrow(res), 7)

  # The 4th book is 《紅樓夢》
  expect_equal(as.character(res$book[4]), '紅樓夢')

  # 《紅樓夢》 has the most lines, challenge another book
  expect_gt(res$total_lines[4], res$total_lines[1])
})
