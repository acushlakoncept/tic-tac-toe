require_relative '../lib/board.rb'
require_relative '../lib/game.rb'

describe Board do
  board = Board.new
  game = Game.new("Elijah", "Uduak", board)
  
  describe "#valid_piece_placement?" do
    it "should return true if piece placement is valid" do
      expect(board.valid_piece_placement?(4)).to be(true)
    end
  end
  
  describe "#full?" do
    it 'should return true when full' do
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