require_relative '../lib/game.rb'
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Game do
  let(:board) {Board.new}
  let(:player1) {Player.new('Uduak', 'X', board)}
  let(:player2) {Player.new('Elijah', 'O', board)}
  let(:game) {Game.new(player1, player2, board)}
  let(:test_proc) {proc { |elem| }}

  describe '#check_winner?' do
    it 'should return true if there is a winner' do
      board.board = %w[X X X 4 5 6 7 8 9]
      expect(game.check_winner?(test_proc, test_proc)).to be(true)
    end
  end

  describe '#check_draw?' do
    it 'should return true if the board is full' do
      board.positions = []
      expect(game.check_draw?(test_proc, test_proc)).to be(true)
    end
  end
end
