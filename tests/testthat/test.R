library(WNBAballr)

test_that('WNBAPerGameAdvStatistics works',{
  expect_equal(dim(WNBAPerGameAdvStatistics(2018))[1], 173)
})
