class Game
  def initialize(first_player, second_player, board)
    @board = board
    @player1 = first_player
    @player2 = second_player
    @current_player = @player1
    # @msg_hash = msg_hash
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

  def self.display_msg(msg)
    msg
  end
end
