require_relative '../lib/board.rb'
require_relative '../lib/game.rb'

describe Board do
  board = Board.new
  game = Game.new("Elijah", "Uduak", board)

  describe "#full?" do
    it 'should return true when full' do
      # expect(board.positions.count).to eq(9)
      board.positions = []
      expect(board.full?).to be(true)
    end
  end
  
  # # check_winner?
  # describe "#check_winner?" do
  #   xit 'should return true if game won' do
  #     expect(game.check_winner?('X', 'Y')).to be(win_combo?('X'))
  #   end
  # end
end