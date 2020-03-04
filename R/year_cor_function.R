#'A Year Correlation Function
#'
#'This function allows you to get the corrlation matrix for all numeric variables in the data for that year.
#'
#'@param year an individual year
#'
#'@return matrix
#'
#'@examples
#'year_cor(2013)
#'
#'@export

year_cor<-function(year){
  usethis::use_data(Seasons_Stats_NBA,overwrite = TRUE)
  df<-dplyr::filter(Seasons_Stats_NBA,Year==year)%>%
    purrr::keep(is.numeric)%>%
    dplyr::select(-(Year))
  out<-cor(df,use="pairwise.complete.obs")
}
