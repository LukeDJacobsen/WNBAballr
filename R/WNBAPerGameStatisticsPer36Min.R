#' WNBA Player Statistics For a Given Season per 36 Minutes
#'
#' @param season A numeric year
#' @return An object of class tbl_df containing all player statistics per 36 minutes for each player from a WNBA season on basketball-reference.com.
#'
#'@examples
#' WNBAPerGameStatisticsPer36Min(2018)
#'
#' @export




WNBAPerGameStatisticsPer36Min <- function(season = 2018){
  wnba_url <- paste("https://www.basketball-reference.com/wnba/years/",
                    season, "_per_minute.html", sep = "")
  pg <- xml2::read_html(wnba_url)
  wnba_df <- dplyr::tbl_df(rvest::html_table(pg, fill = T)[[1]])
  wnba_stats <- wnba_df %>% janitor::clean_names() %>%
    dplyr::filter(.data$player != 'Player')
  return(wnba_stats)
}
WNBAPerGameStatisticsPer36Min()
