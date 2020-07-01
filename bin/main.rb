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
      @current_player.ask_position

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
  end

  def ask_position
    loop do
      # get user position [1-9]

      player_position = player_pos
      if valid_position?(player_position)
        break if @board.set_piece
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

class Board
  def initialize
    @board = %w[1 2 3 4 5 6 7 8 9]
    @positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '---------'
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '---------'
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def set_piece(user_pos, piece)
    if valid_piece_placement?
      replace_pos_with_piece(user_pos, piece)
      remove_taken_pos(user_pos)
      true
    else
      puts 'Position has been taken'
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
    @positions[user_pos - 1] = piece
  end

  def win_combo
    # winning combinations
  end

  def full?
    # is there still room to place piece?
    @positions.empty?
  end
end

# new_game = Game.new
# new_game.play

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

[].empty?
