#' WNBA Player Statistics For a Given Season
#'
#' @param season A numeric year
#' @return An object of class tbl_df containing all player statistics for each player from a WNBA season on basketball-reference.com.
#'
#'@examples
#' WNBAPerGameStatistics(2018)



WNBAPerGameStatistics <- function(season = 2018){
  wnba_url <- paste("https://www.basketball-reference.com/wnba/years/",
                    season, "_totals.html", sep = "")
  pg <- xml2::read_html(wnba_url)
  wnba_df <- dplyr::tbl_df(rvest::html_table(pg, fill = T)[[1]])
  wnba_stats <- wnba_df %>% dplyr::filter(Player != 'Player')
  return(wnba_stats)
}
