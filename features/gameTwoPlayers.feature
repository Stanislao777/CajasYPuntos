Feature: jugar juego
        Como Jugador
        Quiero Jugar con amigos
        Para poder divertirme

            Scenario: jugar con amigos
                Given estoy en la pagina Game
                When hago jugada selecciono opcion "Selection"
                Then hago una jugada y muestra el "Turno de jugador 2"
                And es turno del otro jugador "Turno de jugador 1"