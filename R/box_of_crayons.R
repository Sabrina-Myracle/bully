#' @title A Box of Crayons
#' @description
#' Bully's Box of Crayon randomly selects a word from Bully's biased word bank to store.
#' Then displays a taunting message and the number of letters in that word to the user.
#' @param Words_Hah A vector of words to use as the interchangeable word bank.
#' This defaults to Bully's native word bank (bias), which has been cleaned
#' and trimmed using tidyverse stringr functions
#' @return The password selected from the word bank. This function also displays
#' the number of letters in the word in the console to provide a user hint.
#' @examples
#' Box_of_Crayons()
#' Custom <- c("tardis", "banana", "valkyrie")
#' Box_of_Crayons(Custom)
#'@export
Box_of_Crayons<-function(Words_Hah=bias) {
  fingers<-c("Oh, I hope you remember how to count.", "You will need to count, uses your fingers if you must.", "You must count yourself. I hear some humans use their fingers or their toes for this.","Don't expect me to count for you.", "you must count yourself. I could, but I won't.","You can count can't you?", "If you need help counting. You can ask a friend. I am not friend-shaped,so don't ask.")

password<-sample(Words_Hah,1)
pity<-nchar(password)
cat("Your word has",pity,"letters. \n")
nap_while_human_thinks(1)
cat(sample(fingers,1))
return(password)
}
#bias is Bully's default word bank
