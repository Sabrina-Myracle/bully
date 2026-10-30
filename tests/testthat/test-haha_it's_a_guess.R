describe("haha_its_a_guess()", {
  password <- "banana"

  it("Returns TRUE if user's input matches the stored password passed from box of crayons", {
   #set passing input
    local_mocked_bindings( messy_human = function() "banana")

  expect_true(haha_its_a_guess(NULL,password))
  })

  it("Returns FALSE if user's input does not match the stored password", {
    local_mocked_bindings(messy_human = function() "dalek" )
    expect_false( haha_its_a_guess(column = responses$Meh, password))
  })
})
