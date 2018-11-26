Given("carga la pagina principal") do
    visit('/')
  end

Then("veo mensaje {string}") do |string|
    expect(page).to have_content('Bienvenido')
end

Then("muestra {string}") do |string|
    #expect(page).to have_content('barra de progreso')
end