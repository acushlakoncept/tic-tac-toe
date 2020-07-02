#!/usr/bin/env ruby
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'
require_relative '../lib/board.rb'


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
  when "pos_err"
    puts 'Position has been taken'
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

win_proc = Proc.new { |name| puts "Hurray!!! #{name}, You won!" }
draw_proc = Proc.new { puts "Welldone! It's a draw" }
pos_proc = Proc.new { puts 'Position has been taken' }
single_proc = Proc.new { |elem| puts elem }

#game play
display_msg("start_game")
display_msg("empty")
loop do
  new_game.current_player.ask_position(pos_proc)
  break if (new_game.check_winner?(win_proc, single_proc) || new_game.check_draw?(draw_proc, single_proc))
  new_game.switch_players
end





