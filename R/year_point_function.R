#'A Year Point Function
#'
#'This function allows you to find the name of the player who got highest points for that year.
#'
#'@param year an individual year
#'
#'@return character
#'
#'@examples
#'year_point(2013)
#'
#'@export

year_point<-function(year){
  usethis::use_data(Seasons_Stats_NBA, overwrite = TRUE)
  df<-dplyr::filter(Seasons_Stats_NBA,Year==year)%>%
    dplyr::select(Player,PTS)%>%
    dplyr::arrange(desc(PTS),Player)
  out<-head(df$Player,1)
}
