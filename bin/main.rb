#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

msgs = Hash.new
msgs = {
  "hey" => "Game Started"
}

def display_msg(msg=nil, arg=nil)
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



display_msg("empty")
display_msg("welcome")
display_msg("empty")
board = Board.new

display_msg("player1")
player1 = Player.new(gets.strip, 'X', board)
display_msg("empty")
display_msg("player2")
player2 = Player.new(gets.strip, 'O', board)
display_msg("empty")

new_game = Game.new(player1, player2, board)
# new_game.play

#game play
loop do
  display_msg("empty")
  display_msg("start_game")
  new_game.current_player.ask_position
  break if new_game.game_over?
  new_game.switch_players
end
