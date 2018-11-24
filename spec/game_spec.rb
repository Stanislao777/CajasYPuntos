require './lib/game'

describe Game do
    
    before(:each) do
        @game = Game.new(3, 3, 2)
    end

    it "deberia retonar los datos iniciales" do
        expect(@game.getPlayerScore(0)).to eq(0)
        expect(@game.getPlayerScore(1)).to eq(0)
        expect(@game.getTurn).to eq(0)
    end

    it "deberia retornar el tablero del juego" do
        expect(@game.getBoard.getWidth).to eq(3)
        expect(@game.getBoard.getHeight).to eq(3)
    end

    it "deberia retornar las nuevas dimensiones del tablero" do
        @game = Game.new(7, 7, 2)
        expect(@game.getBoard.getWidth).to eq(7)
        expect(@game.getBoard.getHeight).to eq(7)
    end

    it "deberia retonar dos jugadores" do
        expect(@game.getNumberPlayers).to eq(2)
    end

    it "deberia retonar tres jugadores" do
        @game = Game.new(7, 7, 3)
        expect(@game.getNumberPlayers).to eq(3)
    end

    it "deberia retonar cuatro jugadores" do
        @game = Game.new(7, 7, 4)
        expect(@game.getNumberPlayers).to eq(4)
    end

    it "deberia retornar que el tablero todavia no esta lleno cuando el tablero empieza" do
        expect(@game.isBoardComplete).to eq(false)
    end

    it "deberia retornar que el juego finalizo cuando faltan laterales" do
        @game = Game.new(1, 1, 2)
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(2)
        expect(@game.isBoardComplete).to eq(false)
    end

    it "deberia retornar que el tablero esta lleno" do
        @game = Game.new(1, 1, 2)
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(2)
        @game.pressBoard(3)
        expect(@game.isBoardComplete).to eq(true)
    end

    it "deberia retornar falso cuando se pregunta si el jugador1 gano al principio de la partida" do
        expect(@game.isPlayerWin(0)).to eq(false)
    end

    it "deberia retornar falso cuando se pregunta si el jugador2 gano al principio de la partida" do
        expect(@game.isPlayerWin(1)).to eq(false)
    end

    it "deberia retornar falso cuando se pregunta si el jugador3 gano al principio de la partida" do
        @game = Game.new(1, 1, 3)
        expect(@game.isPlayerWin(2)).to eq(false)
    end

    it "deberia retornar falso cuando se pregunta si el jugador4 gano al principio de la partida" do
        @game = Game.new(1, 1, 4)
        expect(@game.isPlayerWin(3)).to eq(false)
    end

    it "deberia retonar que el jugador4 gano cuando tiene el ultimo cuadrante" do
        @game = Game.new(1, 1, 4)
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(2)
        @game.pressBoard(3)
        expect(@game.isPlayerWin(0)).to eq(false)
        expect(@game.isPlayerWin(1)).to eq(false)
        expect(@game.isPlayerWin(2)).to eq(false)
        expect(@game.isPlayerWin(3)).to eq(true)
    end

    it "deberia cambiar el turno del jugador1 al jugador2" do
        @game.pressBoard(0)
        expect(@game.getTurn).to eq(1)
    end

    it "deberia cambiar el turno del jugador2 al jugador3" do
        @game = Game.new(4, 4, 3)
        @game.pressBoard(0)
        @game.pressBoard(1)
        expect(@game.getTurn).to eq(2)
    end

    it "deberia cambiar el turno del jugador3 al jugador4" do
        @game = Game.new(5, 5, 4)
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(2)
        expect(@game.getTurn).to eq(3)
    end

    it "deberia cambiar el turno del jugador4 al jugador1" do
        @game = Game.new(5, 5, 4)
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(2)
        @game.pressBoard(3)
        expect(@game.getTurn).to eq(0)
    end

    it "deberia jugador2 obtener un nuevo turno y puntaje" do
        @game.pressBoard(0)
        @game.pressBoard(3)
        @game.pressBoard(4)
        @game.pressBoard(7)
        expect(@game.getTurn).to eq(1)
        expect(@game.getPlayerScore(0)).to eq(0)
        expect(@game.getPlayerScore(1)).to eq(1)
    end

    it "deberia jugador1 obtener un nuevo turno y puntaje" do
        @game.pressBoard(0)
        @game.pressBoard(3)
        @game.pressBoard(4)
        @game.pressBoard(10)
        @game.pressBoard(7)
        expect(@game.getTurn).to eq(0)
        expect(@game.getPlayerScore(0)).to eq(1)
        expect(@game.getPlayerScore(1)).to eq(0)
    end

    it "deberia jugador1 obtener un nuevo turno y doble puntaje" do
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(3)
        @game.pressBoard(5)
        @game.pressBoard(7)
        @game.pressBoard(8)
        @game.pressBoard(4)
        expect(@game.getTurn).to eq(0)
        expect(@game.getPlayerScore(0)).to eq(2)
        expect(@game.getPlayerScore(1)).to eq(0)
    end

    it "deberia retonar empate al principio de la partida" do
        expect(@game.isTie).to eq(true)
    end

    it "no deberia retonar empate cuando esta ganando un jugador" do
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(3)
        @game.pressBoard(5)
        @game.pressBoard(7)
        @game.pressBoard(8)
        @game.pressBoard(4)
        expect(@game.isTie).to eq(false)
    end

    it "deberia retornar empate cuando los jugadores empataron" do
        @game = Game.new(2, 2, 2)
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(2)
        @game.pressBoard(3)
        @game.pressBoard(4)
        @game.pressBoard(8)
        @game.pressBoard(9)
        @game.pressBoard(11)
        @game.pressBoard(6)
        @game.pressBoard(7)
        @game.pressBoard(5)
        @game.pressBoard(10)
        puts @game.getPlayerScore(0)
        puts @game.getPlayerScore(1)
        expect(@game.isTie).to eq(true)
    end
end
