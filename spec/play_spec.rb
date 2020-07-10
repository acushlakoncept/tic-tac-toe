require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

describe Player do
  let(:board) { Board.new }
  let(:player) { Player.new('Uduak', 'X', board) }
  it 'should receive 3 arguments' do
    expect(player.name).to eq('Uduak')
    expect(player.piece).to eq('X')
  end

  describe '#valid_position?' do
    it 'should return true for any integer between 1-9' do
      expect(player.valid_position?(2)).to be(true)
      expect(player.valid_position?(0)).to be(false)
      expect(player.valid_position?(11)).to be(false)
    end
  end
end
