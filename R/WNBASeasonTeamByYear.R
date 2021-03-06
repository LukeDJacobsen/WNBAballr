#' Season and Team Stats for WNBA team
#'
#' @param team A team of form "MIN", "DET", etc. Go to 'https://www.basketball-reference.com/wnba/teams/' to find extension needed.
#' @param season A numeric year
#' @return An object of class tbl_df containing team summary statistics for a season. Note this is a different result than 'NBASeasonTeamByYear' in ballr package because basketball-reference.com provides different information between NBA and WNBA.
#'
#'@examples
#' WNBASeasonTeamByYear(team = "MIN", season = 2018)
#'
#' @export

WNBASeasonTeamByYear <- function(team, season = 2018){
  url <- paste("https://www.basketball-reference.com/wnba/teams/", team, "/",
               season, ".html", sep = "")
  pg <- xml2::read_html(url)
  team_stats <- rvest::html_table(pg, fill = T)[[1]]
  return(team_stats)
}
