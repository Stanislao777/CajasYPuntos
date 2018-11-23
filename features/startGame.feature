Feature: Jugar con amigos
        Como jugador
        Quiero iniciar una partida
        Para jugar con mis amigos

        Scenario: Jugar partida con amigos
            Given visito la pagina "/homePage"
            When presiono el link "Jugar con amigos"
            Then deberia ir a la pagina /playWithFriends con el titulo "Elegir jugadores"
