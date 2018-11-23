Given("visito la pagina {string}") do |string|
  visit('/homePage')
end

When("presiono el link {string}") do |string|
  click_link(string)
end

Then("deberia ir a la pagina \/playWithFriends con el titulo {string}") do |string|
  expect(page).to have_content(string)
end