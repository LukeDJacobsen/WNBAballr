#' Standings for WNBA season
#'
#' @param season A numeric year
#' @return A list that contains the Eastern and Western Conference WNBA standings for a season.
#'
#'@examples
#' WNBAStandingsBySeason(2018)
#'
#' @export



WNBAStandingsBySeason <- function(season = 2018){
  url <- paste("https://www.basketball-reference.com/wnba/years/", season,
               ".html#all_team", sep = "")
  pg <- xml2::read_html(url)
  east <- rvest::html_table(pg, fill = T)[[1]]
  west <- rvest::html_table(pg, fill = T)[[2]]
  return(list(east, west))
}
