  Given("visito la pagina {string}") do |string|
    visit '/homePage'
  end
    
  When("presiono el link {string}") do |string|
    click_link("Jugar con amigos")
  end
  
  Then("deberia ver el titulo {string}") do |string|
    last_response.body.should =~ /#{"Turno del jugador 1"}/m
  end


  