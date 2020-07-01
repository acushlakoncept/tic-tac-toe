#!/usr/bin/env ruby

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
      # render the board
      @board.display_board
      # ask for the current players position
      puts "#{@current_player.name}, Choose from 1 - 9"
      break if game_over?

      switch_players
    end
  end

  def game_over?
    # check_winner
    # check_draw
    true
  end

  def check_winner
    # check if current player has a winner combination
    # display win message
  end

  def check_draw
    # check if board is filled up
    # display draw message
  end

  def switch_players
    # player 1 > player 2 or vice versa
  end
end

class Player
  attr_accessor :name, :piece

  def initialize(name, piece, board)
    @name = name
    @piece = piece
    @board = board
    @positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def ask_position
    loop do
        # get user position [1-9]
        
        player_position = get_postion
        # check if position is valid
        # set_piece
        # else
        # display_error and ask_position again
    end
  end

  def get_postion
    puts "Enter where you want to place piece on the board [1-9]"
    gets.strip.to_i
  end

  def valid_position?(user_pos)
    user_pos.is_a?(Integer) && (1..9).include?(user_pos)
  end

end

class Board
  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
  end

  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '---------'
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '---------'
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def set_piece
    # set piece X or O on the board
  end

  def win_combo
    # winning combinations
  end

  def full?
    # is there still room to place piece?
  end
end

# new_game = Game.new
# new_game.play

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# p arr.include?(0)
# p arr
# p arr.delete(8)
# p arr


# p [1].empty?
# ar = ["1", "2", "X", "4", "X", "6", "X", "8", "9" ]
# arry = [[0,4,8], [2,4,6]]

# arry.each do |dia|
  
# end

# positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# p (1..9).include?(2)
# p 9.between?(1, 9)

pos = gets.strip.to_i
p pos.is_a?(Integer) && (1..9).include?(pos)


