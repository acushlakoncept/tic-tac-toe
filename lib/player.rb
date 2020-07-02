class Player
  attr_reader :name, :piece

  def initialize(name, piece, board)
    @name = name
    @piece = piece
    @board = board
  end

  def ask_position(msg_proc)
    loop do
      puts @board.display_board
      player_position = player_pos
      if valid_position?(player_position)
        break if @board.set_piece(player_position, @piece, msg_proc)
      else
        puts 'Please enter a valid position on the board'
      end
    end
  end

  def player_pos
    puts "#{@name} : #{@piece}, Choose from 1 - 9"
    gets.strip.to_i
  end

  def valid_position?(user_pos)
    user_pos.is_a?(Integer) && (1..9).include?(user_pos)
  end
end
