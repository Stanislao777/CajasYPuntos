Given("estoy en la pagina del juego") do
    visit('/game')
  end
  
  When("hago jugada y termino mi ultima jugada {string}") do |string|
    expect(page).to have_content(text)
  end
  
  Then("de acuerdo al tipo de jugador muestra el texto {string}") do |string|
    expect(page).to have_content(text)
  end