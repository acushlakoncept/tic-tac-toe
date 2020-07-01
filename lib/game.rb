

class Game
  def initialize
    @board = Board.new
    puts 'Player 1, input name:'
    @player1 = Player.new(gets.strip, 'X', @board)
    puts 'Player 2, input name:'
    @player2 = Player.new(gets.strip, 'O', @board)
    @current_player = @player1
  end

  def play
    puts 'Game has started!'
    loop do
      @current_player.ask_position

      break if game_over?

      switch_players
    end
  end

  def game_over?
    check_winner? || check_draw?
  end

  def check_winner?
    if @board.win_combo?(@current_player.piece)
      @board.display_board
      puts "Hurray!!! #{@current_player.name}, You won!"
      true
    else
      false
    end
  end

  def check_draw?
    if @board.full?
      @board.display_board
      puts "Welldone! It's a draw"
      true
    else
      false
    end
  end

  def switch_players
    @current_player = if @current_player == @player1
                        @player2
                      else
                        @player1
                      end
  end
end