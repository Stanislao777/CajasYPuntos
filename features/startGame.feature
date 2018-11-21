Feature: Jugar con amigos
        Como jugador
        Quiero iniciar una partida
        Para jugar con mis amigos

        Scenario: pagina principal
            Given visito la pagina "/homePage"
            When presiono el link "Jugar con amigos"
            Then deberia ver el titulo "Turno del jugador 1"
