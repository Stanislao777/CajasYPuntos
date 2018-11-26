Given("estoy en la pagina Game") do
    visit('/game')
  end
  
  When("hago jugada selecciono opcion {string}") do |string|
    expect(page).to have_content(text)
  end
  
  Then("hago una jugada y muestra el {string}") do |string|
    expect(page).to have_content(text)
  end

  Then("es turno del otro jugador {string}") do |string|
    expect(page).to have_content(text)
  end