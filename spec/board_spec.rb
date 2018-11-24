require './lib/board'

describe Board do
    
    before(:each) do
        @board = Board.new(3, 3)
    end

    it "deberia retornar un array de laterales en una matriz 2x2" do
        @board = Board.new(2, 2)
        expect(@board.getSides).to eq([false, false, false, false, false, false, false, false, false])
    end

    it "deberia retornar un array de laterales en una matriz 3x3" do
        expect(@board.getSides).to eq([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false])
    end

    it "deberia retornar un array de laterales en una matriz 4x4" do
        @board = Board.new(4, 4)
        expect(@board.getSides).to eq([false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false])
    end

    it "deberia retornar el estado inicial de los laterales" do
        expect(@board.getSides).not_to include(true)
    end

    it "deberia retornar un array de squares en una matriz 2x2" do
        @board = Board.new(2, 2)
        expect(@board.getSquares).to eq([0, 0, 0, 0])
    end

    it "deberia retornar un array de squares en una matriz 3x3" do
        expect(@board.getSquares).to eq([0, 0, 0, 0, 0, 0, 0, 0, 0])
    end

    it "deberia retornar un array de squares en una matriz 4x4" do
        @board = Board.new(4, 4)
        expect(@board.getSquares).to eq([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
    end

    it "deberia retonar el estado inicial de los cuadrados" do
        expect(@board.getSquares).not_to include(1)
        expect(@board.getSquares).not_to include(2)
        expect(@board.getSquares).not_to include(3)
        expect(@board.getSquares).not_to include(4)
    end

    it "deberia retornar el ancho del tablero" do
        expect(@board.getWidth).to eq(3)
    end

    it "deberia retornar el nuevo ancho del tablero" do
        @board = Board.new(6, 3)
        expect(@board.getWidth).to eq(6)
    end

    it "deberia retornar la altura del tablero" do
        expect(@board.getHeight).to eq(3)
    end

    it "deberia retornar la nueva altura del tablero" do
        @board = Board.new(3, 6)
        expect(@board.getHeight).to eq(6)
    end

    it "deberia retornar cero casillas marcadas" do
        expect(@board.pressBoard(0, 1)).to eq(0)
    end

    it "deberia retornar una casilla marcada" do
        @board.pressBoard(0, 1)
        @board.pressBoard(3, 1)
        @board.pressBoard(4, 1)
        expect(@board.pressBoard(7, 1)).to eq(1)
    end

    it "deberia retornar cero casillas marcadas despues de haber marcado la primera casilla" do
        @board.pressBoard(0, 1)
        @board.pressBoard(3, 1)
        @board.pressBoard(4, 1)
        @board.pressBoard(7, 1)
        expect(@board.pressBoard(8, 1)).to eq(0)
    end

    it "deberia retornar una casilla marcada" do
        @board.pressBoard(0, 1)
        @board.pressBoard(1, 1)
        @board.pressBoard(3, 1)
        @board.pressBoard(5, 1)
        @board.pressBoard(7, 1)
        @board.pressBoard(8, 1)
        expect(@board.pressBoard(4, 1)).to eq(2)
    end
end
