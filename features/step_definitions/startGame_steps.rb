Given("visito la pagina {string}") do |string|
  visit('/homePage')
end

When("presiono el link {string}") do |string|
  click_link('Jugar con amigos')
end

Then("deberia ir a la pagina {string}") do |string|
  visit('/playWithFriends')
end