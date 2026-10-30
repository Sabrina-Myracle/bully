#' Ha Ha its a Guess
#'
#' @description compares the users input to the password selected by an earlier function and returns a customized response.
#' @param column A column from Bully's native response table. Potentially interchangeable if user downloads their own response table.
#' @param password the object returned from Box_of_Crayons.
#'
#' @return TRUE if the guess matches the word selected.
#' FALSE if it doesn't.
#' It also displays a custom response from Bully in each scenario.
#' @examples
#' ha_ha_its_a_guess(column,password)
#' @export
haha_its_a_guess<-function (column,password) {
  #runs messy humans to do the validating.
  guess<-messy_human()
  #checks if the answer is the same one pulled in box of crayons.
  if (guess==password){
return(TRUE)}
  else  {
    #insults the user in the likely case that it is not a match.
  cat(sample(column,1))
  return(FALSE)
  }
}
