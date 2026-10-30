#'Oh Hello
#'
#'@description Bully's dramatic entrance introduces the users to the rules and times the dialogue for legibility.

#'@export
Oh_Hello<-function() {
  cat(sample(responses$Introduction,1))
      nap_while_human_thinks(1.75)
     cat("\n Sit down. Shut Up, Grab a juice box.\n")
      nap_while_human_thinks(1.75)
      cat("I will pick a word.\n")
      nap_while_human_thinks(1.75)
      cat("you will guess that word.\n")
      nap_while_human_thinks(1.75)
      cat("You will type JUST the letters of that word.\n")
      nap_while_human_thinks(1.75)
      cat("No punctuation marks or symbols. I know those are too complicated for you.\n")
      nap_while_human_thinks(2)
      cat("If you want to be a baby about it and quit\n")
      nap_while_human_thinks(1.75)
          cat("you can throw your tantrum by typing ...\n")
     nap_while_human_thinks(2)
          cat("hehe...\n")
          nap_while_human_thinks(1)
         cat("(colonel_runaway)")
         nap_while_human_thinks()
         cat("\n hehehe.\n")
     nap_while_human_thinks(2)
    cat("No, obviously, You don't include the paranthesis.\n")
     nap_while_human_thinks(1.75)
        cat("Don't make this embarrasing.\n")
}


