#' Who Wins?
#' @description
#' If Haha_its_a_Guess returns TRUE this function returns a value to the main Bully function,
#'  and displays the winning phrase combination from Bully's native responses table.
#' @param result either TRUE or FALSE.
#' this is fed from the Haha_its_a_Guess function.
#' @examples
#'  Who_Wins(result)
#' sad==FALSE
#' Who_Wins(sad)
#' @returns TRUE will cue the winning phrase, and return a value that cleanly ends the game.
#' FALSE does nothing and lets guessing loop in Bully continue.
#' @export
Who_Wins<-function(result){
  if(result) {
    cat(sample(responses$Huh,1),sample(responses$JunkDrawer,1))
return(TRUE)
    }
  else {
  return(FALSE)
    }
}
