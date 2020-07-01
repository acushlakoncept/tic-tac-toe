#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'


def display_msg(msg, arg=nil)
  case msg
  when "welcome" 
    puts 'WELCOME TO TIC-TAC-TOE GAME!!!'
  when "empty"
    puts ' '
  when "player1"
    puts 'Player 1, input name:'
  when "player2"
    puts 'Player 2, input name:'
  when "start_game"
    puts 'Game has started!'
  when "win_msg"
    puts "Hurray!!!, #{arg}, You won!"
  end
end

puts ' '
puts 'WELCOME TO TIC-TAC-TOE GAME!!!'
puts ' '
board = Board.new

puts 'Player 1, input name:'
player1 = Player.new(gets.strip, 'X', board)
puts ' '
puts 'Player 2, input name:'
player2 = Player.new(gets.strip, 'O', board)
puts ' '

new_game = Game.new(player1, player2, board)
new_game.play




display_msg("win_msg")