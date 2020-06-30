#!/usr/bin/env ruby

class Game
    def initialize
      @board = Board.new
      puts "Player 1, input name:"
      @player_1 = Player.new(gets.chomp, "X", @board)
      puts "Player 2, input name:"
      @player_2 = Player.new(gets.chomp, "O", @board)
      @current_player = @player_1
    end
end

class Player
    attr_accessor :name, :piece

    def initialize(name, piece, board)
        @name = name
        @piece = piece
        @board = board
    end
end

class Board
    def initialize
        @board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
    end

    def display_board
        puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"  
        puts "---------"
        puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
        puts "---------"
        puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
    end


end


new_board = Board.new
new_board.display_board

new_game = Game.new
new_game