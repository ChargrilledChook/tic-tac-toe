require './lib/board'

describe GameBoard do
  describe '#co_ords' do
    it 'has the correct default values' do
      expect(GameBoard.new.co_ords).to eq(Array(0..9))
    end

    it 'can be indexed into' do
      expect(GameBoard.new.co_ords[5]).to eq(5)
    end

    it 'can be updated' do
      board = GameBoard.new
      board.co_ords[5] = 'X'
      expect(board.co_ords[5]).to eq('X')
    end
  end

  describe '#draw_board' do
    it 'draws the correct default board' do
      expect(GameBoard.new.draw_board).to eq(
        %(
  7 | 8 | 9
  ---------
  4 | 5 | 6
  ---------
  1 | 2 | 3)
    )
    end

    it 'draws the correct board with updated values' do
      board = GameBoard.new
      board.co_ords[7] = 'X'
      board.co_ords[5] = 'O'
      expect(board.draw_board).to eq(
        %(
  X | 8 | 9
  ---------
  4 | O | 6
  ---------
  1 | 2 | 3)
      )
    end
  end
end
