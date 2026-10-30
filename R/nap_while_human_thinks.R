#' Nap While Humans Think
#' @description
#' This is just a wrap around system sleep allow the front facing code behind Bully to read as inner monologue.
#' @param seconds Defaults to 1.5.
#' @examples
#' nap_while_human_thinks()
#' nap_while_human_thinks(2)
#'@export
nap_while_human_thinks<-function(seconds = 1.5) {
  Sys.sleep(seconds)
}
