library(WNBAballr)

test_that('WNBAPerGameAdvStatistics works',{
  expect_equal(dim(WNBAPerGameAdvStatistics(2018))[1], 173)
})

test_that('WNBAPerGameStatistics works',{
  expect_equal(dim(WNBAPerGameStatistics(2017))[1], 178)
})

test_that('WNBAPerGameStatisticsPer36Min works',{
  expect_equal(dim(WNBAPerGameStatistics(2016))[1], 174)
})
