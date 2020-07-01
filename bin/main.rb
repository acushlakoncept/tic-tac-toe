#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

board = Board.new

puts 'Player 1, input name:'
player1 = Player.new(gets.strip, 'X', board)
puts 'Player 2, input name:'
player2 = Player.new(gets.strip, 'O', board)

new_game = Game.new(player1, player2, board)
new_game.play
