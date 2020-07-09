require_relative '../lib/player.rb'
require_relative '../lib/board.rb'

describe Player do
  it 'should receive 3 arguments' do
    board = Board.new
    player = Player.new("Uduak", "X", board)
    expect(player.name).to eq("Uduak")
    expect(player.piece).to eq("X")
  end
  
end