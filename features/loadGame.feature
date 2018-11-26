Feature: Mostrar juego
    Como Jugador
    Quiero Iniciar un juego
    Para Divertirme

        Scenario: Cargar juego
            Given carga la pagina principal
            Then veo mensaje "Bienvenida"
            And muestra "barra de progreso"
            
