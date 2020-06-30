#!/usr/bin/env ruby

class Game
  def initialize
    @board = Board.new
    puts 'Player 1, input name:'
    @player1 = Player.new(gets.chomp, 'X', @board)
    puts 'Player 2, input name:'
    @player2 = Player.new(gets.chomp, 'O', @board)
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
  end

  def ask_position
    # get user position [1-9]
    # check if position is valid
    # set_piece
    # else
    # display_error and ask_position again
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

new_game = Game.new
new_game.play
