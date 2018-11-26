Given("visito la pagina Principal") do
    visit('/homePage')
end

Then("deberia ver la opcion {string}") do |string|
    expect(page).to have_content('Jugar con amigos')
end