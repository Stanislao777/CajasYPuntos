Feature: Ver pagina principal
        Como jugador
        Quiero ver opciones de juego
        Para poder empezar una jugada

        Scenario: Jugar partida con amigos
            Given visito la pagina Principal
            Then deberia ver la opcion "Jugar con amigos"
            And  deberia ver la opcion "Jugar con PC"
            And  deberia ver la opcion "Tutorial"