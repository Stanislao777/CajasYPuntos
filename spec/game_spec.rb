require './lib/game'

describe Game do
    
    before(:each) do
        @game = Game.new(3, 3)
    end

    it "deberia retonar los datos iniciales" do
        expect(@game.getPlayer1Score).to eq(0)
        expect(@game.getPlayer2Score).to eq(0)
        expect(@game.getTurn).to eq(1)
    end

    it "deberia retornar el tablero del juego" do
        expect(@game.getBoard.getWidth).to eq(3)
        expect(@game.getBoard.getHeight).to eq(3)
    end

    it "deberia cambiar el turno del jugador" do
        @game.pressBoard(0)
        expect(@game.getTurn).to eq(-1)
    end

    it "deberia jugador2 obtener un nuevo turno y puntaje" do
        @game.pressBoard(0)
        @game.pressBoard(3)
        @game.pressBoard(4)
        @game.pressBoard(7)
        expect(@game.getTurn).to eq(-1)
        expect(@game.getPlayer1Score).to eq(0)
        expect(@game.getPlayer2Score).to eq(1)
    end

    it "deberia jugador1 obtener un nuevo turno y puntaje" do
        @game.pressBoard(0)
        @game.pressBoard(3)
        @game.pressBoard(4)
        @game.pressBoard(10)
        @game.pressBoard(7)
        expect(@game.getTurn).to eq(1)
        expect(@game.getPlayer1Score).to eq(1)
        expect(@game.getPlayer2Score).to eq(0)
    end

    it "deberia jugador1 obtener un nuevo turno y doble puntaje" do
        @game.pressBoard(0)
        @game.pressBoard(1)
        @game.pressBoard(3)
        @game.pressBoard(5)
        @game.pressBoard(7)
        @game.pressBoard(8)
        @game.pressBoard(4)
        expect(@game.getTurn).to eq(1)
        expect(@game.getPlayer1Score).to eq(2)
        expect(@game.getPlayer2Score).to eq(0)
    end
end
