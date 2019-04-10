#' WNBA Player Career Statistics
#'
#' @param player_link The end of url of 'https://www.basketball-reference.com/wnba'. For example, '/players/f/fowlesy01w.html' for Sylvia Fowles.
#' @return An object of class tbl_df containing a player's career statistics from basketball-reference.com.
#'
#'@examples
#'WNBAPlayerPerGameStats('/players/f/fowlesy01w.html')


WNBAPlayerPerGameStats <- function(player_link){
  player_url <- paste("https://www.basketball-reference.com/wnba",
                      player_link, sep = "")
  pg <- xml2::read_html(player_url)
  player_stats <- rvest::html_table(pg, fill = T)[[1]]
  return(player_stats)
}
