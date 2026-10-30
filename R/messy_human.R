

#'Messy Human
#'
#'@description Handles users input by converting case to lower case in order to match the native word bank.
#'Sets an emergency exit by testing for input designed to crash the program.
#'Runs a loop until user input only equals character.
#'uses cat to display snarky response to user from Bully's native response table.
#'@return guess, it returns the user input as a character string using lowercase letters
#'@examples messy_human()
#'@export
messy_human<-function(){
  repeat{
    I_Have_to_clean<-Humph_Messy()
    guess<-tolower(I_Have_to_clean)
#This many loops needs an exit. The programs design choice is to leave it messy.
    if (guess == "colonel_runaway") {
      stop("Do I need to call the Waambulance?")
    }
   #enforces rules despite a robust readline.
  if (!grepl("^[A-Za-z]+$", guess)) {
   cat(sample(responses$LETTERS., 1),"\n")
  } else {
    #always break
      break} }
    return(guess)
    }

