Given("visito la pagina Elegir Jugadores") do
    visit('/playWithFriends')
  end
  
  When("presiono el boton {string}") do |string|
    click_button('2 jugadores')
  end
  
  Then("deberia ir a la pagina \/playWithFriends con el titulo {string}") do |string|
    expect(page).to have_content('Jugador 1: 0')
  end
  
  Then("mostrar el titulo {string}") do |string|
    expect(page).to have_content('Jugador 2: 0')
  end