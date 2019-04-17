context('novels')
suppressPackageStartupMessages(library(dplyr))
test_that('novels', {
  res <- hello()
  expect_equal(as.character(res), 'Hello, world!')
})
