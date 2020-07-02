class Player
  attr_reader :name, :piece

  def initialize(name, piece, board)
    @name = name
    @piece = piece
    @board = board
  end

  def ask_position(*args)
    loop do
      args[2].call(@board.display_board)
      player_position = player_pos(args[1])
      if valid_position?(player_position)
        break if @board.set_piece(player_position, @piece, args[0])
      else
        args[3].call
      end
    end
  end

  def player_pos(player_pos_proc)
    # puts "#{@name} : #{@piece}, Choose from 1 - 9"
    # gets.strip.to_i
    player_pos_proc.call(@name, @piece)
  end

  def valid_position?(user_pos)
    user_pos.is_a?(Integer) && (1..9).include?(user_pos)
  end
end
