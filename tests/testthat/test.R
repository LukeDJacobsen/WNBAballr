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

test_that('WNBAPlayerPerGameStats works',{
  expect_equal(dim(WNBAPlayerPerGameStats('/players/f/fowlesy01w.html'))[[1]], 13)
})

test_that('WNBASeasonTeamByYear works',{
  expect_equal(dim(WNBASeasonTeamByYear("MIN", season = 2018))[2], 24)
})

test_that('WNBAStandingsBySeason works',{
  expect_equal(WNBAStandingsBySeason(2014)[[1]][1,2], 19)
})
