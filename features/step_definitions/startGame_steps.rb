Given("visito la pagina {string}") do |string|
  visit('/homePage')
end

When("presiono el link {string}") do |string|
  click_link(string)
end

Then("deberia ir a la pagina \/playWithFriends con el titulo {string}") do |string|
  expect(page).to have_content(string)
end

When("presiono el boton {string}") do |boton|
  click_button(boton)
end

Then("deberia ir a la pagina \/game con el titulo {string} y {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end