describe("messy_human()", {
  it("changes all user input to lower case to match biased word bank", {
    local_mocked_bindings(Humph_Messy = function() "BaNaNa")
    expect_equal(messy_human(), "banana")
  })

  it("Let's user escape by throwing a customized taunting error message", {
    local_mocked_bindings(Humph_Messy = function() "colonel_runaway")
    expect_error(
      messy_human(),
      "Do I need to call the Waambulance?"
    )
  })

  it("loops when the user enters invalid input", {
    inputs <- c("42", "banana")

    local_mocked_bindings(Humph_Messy = function() {
      I_have_to_clean <- inputs[1]
      inputs<<- inputs[-1]
      I_have_to_clean
    })

    expect_equal(messy_human(), "banana")
  })
})
