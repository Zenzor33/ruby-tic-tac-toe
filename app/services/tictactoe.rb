class Tictactoe
  class Gameboard 
    def initialize(first_player, second_player)
      @player_1 = first_player
      @player_2 = second_player
      set_gameboard
    end

    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def play_square(player, square)
      return "error: square unavailable" unless square_available?(square)

      mark = get_mark(player)

      @board[square] = mark

      display_board
    end

    private 

    def get_mark(player)
      player == @player_1 ? "x" : "o"
    end 

    def set_gameboard 
      @board = [" ", " ", " "," ", " ", " ", " ", " ", " "]
    end 

    def square_available?(square)
      @board[square] == " "
    end

  end 

  class Player 
    def initialize(name)
      @name = name 
    end
  end
end

richard = Tictactoe::Player.new("Richard")
todd = Tictactoe::Player.new("Todd")
gameboard = Tictactoe::Gameboard.new(richard, todd)
gameboard.play_square(richard, 4)
