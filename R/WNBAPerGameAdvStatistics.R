#' WNBA Player Advanced Statistics For a Given Season
#'
#' @param season A numeric year
#' @return An object of class tbl_df containing all player advanced statistics for each player from a WNBA season on basketball-reference.com.
#'
#'@examples
#' WNBAPerGameAdvStatistics(2018)

WNBAPerGameAdvStatistics <- function(season = 2018){
  wnba_url <- paste("http://www.basketball-reference.com/wnba/years/",
                    season, "_advanced.html", sep = "")
  pg <- xml2::read_html(wnba_url)
  wnba_list <- rvest::html_table(pg, fill = T)[[1]]
  wnba_df <- as.data.frame(wnba_list)
  wnba_df <- janitor::remove_empty(wnba_df, "cols")
  wnba_stats <- wnba_df %>% janitor::clean_names() %>% dplyr::filter(.data$player != "Player")
  return(wnba_stats)
}

