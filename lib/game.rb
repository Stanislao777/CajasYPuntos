require './lib/board'

class Game

    def initialize(width, height)
        @board = Board.new(width, height)
        @score_1 = 0
        @score_2 = 0
        @turn = 1
    end

    def getBoard
        @board
    end

    def pressBoard(position)
        response = @board.pressBoard(position, @turn)
        if response == 0
            @turn = @turn * -1
        else
            if @turn == 1
                @score_1 = @score_1 + response
            else
                @score_2 = @score_2 + response
            end
        end
    end

    def getTurn
        @turn
    end

    def getPlayer1Score
        @score_1
    end

    def getPlayer2Score
        @score_2
    end
end