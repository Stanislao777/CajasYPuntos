require './lib/board'

class Game

    def initialize(width, height, players)
        @board = Board.new(width, height)
        @score = Array.new(players, 0)
        @players = players
        @turn = 0
    end

    def getBoard
        @board
    end

    def getNumberPlayers
        @players
    end

    def pressBoard(position)
        response = @board.pressBoard(position, @turn + 1)
        if response == 0
            @turn = (@turn + 1) % @players
        else
            @score[@turn] = @score[@turn] + response
        end
    end

    def getTurn
        @turn
    end

    def isBoardComplete
        points = 0
        @score.each { |x| points = points + x }
        @board.getWidth * @board.getHeight == points
    end

    def isPlayerWin(player)
        response = true
        for index in 0..(@players - 1) do
            if index != player
                if @score[index] >= @score[player]
                    response = false
                end
            end
        end
        response
    end

    def isTie
        response = true
        for index in 1..(@players - 1) do
            if @score[index] != @score[0]
                response = false
            end
        end
        response
    end

    def getPlayerScore(pos)
        @score[pos]
    end
end