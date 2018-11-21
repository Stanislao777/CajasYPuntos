require './lib/board'

describe Board do
    
    before(:each) do
        @board = Board.new(3, 3)
    end

    it "deberia retornar el ancho del tablero" do
        expect(@board.getWidth).to eq(3)
    end

    it "deberia retornar la altura del tablero" do
        expect(@board.getHeight).to eq(3)
    end

    it "deberia retornar el estado inicial de los laterales" do
        expect(@board.getSides).not_to include(true)
    end

    it "deberia retonar el estado inicial de los cuadrados" do
        expect(@board.getSquares).not_to include(1)
        expect(@board.getSquares).not_to include(-1)
    end

    it "deberia retornar uno la funcion de marca lateral" do
        @board.pressBoard(0, 1)
        @board.pressBoard(3, 1)
        @board.pressBoard(4, 1)
        expect(@board.pressBoard(7, 1)).to eq(1)
    end

    it "deberia retornar dos la funcion de marca lateral" do
        @board.pressBoard(0, 1)
        @board.pressBoard(1, 1)
        @board.pressBoard(3, 1)
        @board.pressBoard(5, 1)
        @board.pressBoard(7, 1)
        @board.pressBoard(8, 1)
        expect(@board.pressBoard(4, 1)).to eq(2)
    end
end
