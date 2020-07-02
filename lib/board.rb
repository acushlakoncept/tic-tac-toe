class Board
  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
    @positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    board_info =  "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    board_info <<  "\n"
    board_info <<  '---------'
    board_info <<  "\n"
    board_info <<  "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    board_info << "\n"
    board_info <<  '---------'
    board_info << "\n"
    board_info <<  "#{@board[6]} | #{@board[7]} | #{@board[8]}"
    board_info <<  "\n"

    board_info
  end

  def set_piece(user_pos, piece, pos_proc)
    if valid_piece_placement?(user_pos)
      replace_pos_with_piece(user_pos, piece)
      remove_taken_pos(user_pos)
      true
    else
      pos_proc.call()
      false
    end
  end

  def valid_piece_placement?(user_pos)
    @positions.include?(user_pos)
  end

  def remove_taken_pos(user_pos)
    @positions.delete(user_pos)
  end

  def replace_pos_with_piece(user_pos, piece)
    @board[user_pos - 1] = piece
  end

  def win_combo?(piece)
    diagonal_wins?(piece) || hori_wins?(piece) || vert_wins?(piece)
  end

  def diagonal_wins?(piece)
    diagonal_combo.any? { |dia| dia.all? { |n| n == piece } }
  end

  def hori_wins?(piece)
    hori_combo.any? { |hori| hori.all? { |n| n == piece } }
  end

  def vert_wins?(piece)
    vert_combo.any? { |vert| vert.all? { |n| n == piece } }
  end

  def diagonal_combo
    [[@board[0], @board[4], @board[8]], [@board[2], @board[4], @board[6]]]
  end

  def hori_combo
    [[@board[0], @board[1], @board[2]], [@board[3], @board[4], @board[5]], [@board[6], @board[7], @board[8]]]
  end

  def vert_combo
    [[@board[0], @board[3], @board[6]], [@board[1], @board[4], @board[7]], [@board[2], @board[5], @board[8]]]
  end

  def full?
    @positions.empty?
  end
end
