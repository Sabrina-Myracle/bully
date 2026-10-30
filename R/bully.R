#' Bully
#' @description
#' bully is tasked with dramatic timing ,and order of operations for the other functions.
#' It calls the guess checking functions and response loops. It also is in charge of the game ending.
#' @param attempts attempts lets the user choose a custom amount of guesses to repeat through each level.
#' It's default is set to 3, if you ask for more than 7 guesses this functons will quesion the users sanity using cat.
#' @returns ends the game the user runs out of guesses, and reveals the password.
#' @examples Bully(attempts=3)
#' @export
Bully<-function(attempts=3){
  if (attempts >= 7) {
    cat("You're really committed to your stupidity, aren't you?\n")
    nap_while_human_thinks(2)
    cat("May Magrathea have mercy on us all.\n")
    nap_while_human_thinks(2)
  }
  #needs to lay the ground rules.
Oh_Hello()
  nap_while_human_thinks(1.5)
password<-Box_of_Crayons()
#Not nesting the below for loops because future versions could want to have varying iterations at different levels.
nap_while_human_thinks(2)
for (i in 1:attempts) {
#function for handling user input is seperate to game behavior.
 meh<-haha_its_a_guess(responses$Meh,password)
if (Who_Wins(meh)){
 return()
}
}
for( i in 1:attempts) {
 nope<-haha_its_a_guess(responses$Nope,password)
 if (Who_Wins(nope)) {
   return()
 }
 }
for( i in 1:attempts) {
  ridiculous<-haha_its_a_guess(responses$Ridiculous,password)
if (Who_Wins(ridiculous)) {
  return()
}
}

for (i in 1:attempts) {
 sad<- haha_its_a_guess(responses$Sad,password)
if (Who_Wins(sad)){
  return()
}
}
for (i in 1:attempts) {
  no_fun<-haha_its_a_guess(responses$Not_Fun_Anymore,password)
if (Who_Wins(no_fun)){
  return()
}
}
#Bully giving up doesn't need a grand code since nothing is actually being checked.

cat("\n",sample(responses$PleaseSTOP,1))
nap_while_human_thinks(1.5)
cat("\n The word was \n")
nap_while_human_thinks(2)
cat(password)
nap_while_human_thinks(2.5)
cat("\n What? Are you expecting a curtain call?\n")
nap_while_human_thinks(1)
cat("Game Over!")
}



