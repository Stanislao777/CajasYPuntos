class Board

    def initialize(width, height)
        @width = width
        @height = height
        @sides = Array.new(((@width * 2) + ((@width + 1) * @height)) - 1, false)
        @squares = Array.new(@width * @height, 0)
    end

    def getSides
        @sides
    end

    def getSquares
        @squares
    end

    def getWidth
        @width
    end

    def getHeight
        @height
    end

    def pressBoard(position, turn)
        @sides[position] = true
        aux = 0
        actualSquare = 0
        response = 0
        for a in 1..@height do
            for b in 0..@width - 1 do
                if @sides[aux + b] && @sides[aux + b + @width] && @sides[aux + b + @width + 1] && @sides[aux + b + @width + 1 + @width]
                    if @squares[actualSquare] == 0
                        @squares[actualSquare] = turn
                        response = response + 1
                    end
                end
                actualSquare = actualSquare + 1
            end
            aux = aux + (@width * 2 + 1)
        end
        return response
    end
end