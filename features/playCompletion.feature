Feature: Terminar partida
        Como Jugador
        Quiero Jugar con amigos
        Para poder finalizar juego

            Scenario: terminar juego con amigos
                Given estoy en la pagina del juego
                When hago jugada y termino mi ultima jugada "Selection"
                Then de acuerdo al tipo de jugador muestra el texto "Gano jugador #"