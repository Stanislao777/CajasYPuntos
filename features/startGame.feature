Feature: Jugar con amigos
        Como jugador
        Quiero iniciar una partida
        Para jugar con mis amigos

        Scenario: Jugar con un amigo
            Given visito la pagina Elegir Jugadores
            When presiono el boton "2 jugadores"
            Then deberia ir a la pagina /playWithFriends con el titulo "Jugador 1: 0" 
            And mostrar el titulo "Jugador 2: 0"

        Scenario: Jugar con tres amigos
            Given visito la pagina Elegir Jugadores
            When presiono el boton "3 jugadores"
            Then deberia ir a la pagina /playWithFriends con el titulo "Jugador 1: 0" 
            And mostrar el titulo "Jugador 2: 0" 
            And mostrar el titulo "Jugador 3: 0"

        Scenario: Jugar con cuatro amigos
            Given visito la pagina Elegir Jugadores
            When presiono el boton "4 jugadores"
            Then deberia ir a la pagina /playWithFriends con el titulo "Jugador 1: 0" 
            And mostrar el titulo "Jugador 2: 0" 
            And mostrar el titulo "Jugador 3: 0"
            And mostrar el titulo "Jugador 4: 0"