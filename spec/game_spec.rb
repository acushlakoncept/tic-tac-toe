require_relative '../lib/game.rb'
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Game do
  board = Board.new
  player1 = Player.new('Uduak', 'X', board)
  player2 = Player.new('Elijah', 'O', board)
  game = Game.new(player1, player2, board)
  single_proc = proc { |elem| }

  describe '#check_winner?' do
    it 'should return true if there is a winner' do
      win_proc = proc { |name|  }
      board.board = %w[X X X 4 5 6 7 8 9]
      expect(game.check_winner?(win_proc, single_proc)).to be(true)
    end
  end

  describe '#check_draw?' do
    it 'should return true if the board is full' do
      draw_proc = proc {}
      board.positions = []
      expect(game.check_draw?(draw_proc, single_proc)).to be(true)
    end
  end
end
