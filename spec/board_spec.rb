# frozen_string_literal: true

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
  1 | 2 | 3
  )
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
  1 | 2 | 3
  )
      )
    end
  end

  describe '#win_combos' do
    it 'has the correct values' do
      expect(GameBoard.new.win_combos).to eq(
        [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7],
         [2, 5, 8], [3, 6, 9], [3, 5, 7], [1, 5, 9]]
      )
    end
  end

  describe '#game_won?' do
    it 'returns false when game is not won' do
      board = GameBoard.new
      board.co_ords = [0, "O", "O", 3, "X", "X", 6, 7, 8, 9]
      expect(board.game_won?('O')).to eq false
    end

    it 'returns true when won on a horizontal' do
      board = GameBoard.new
      board.co_ords = [0, "O", "O", "O", "X", "X", 6, 7, 8, 9]
      expect(board.game_won?('O')).to eq true
    end

    it 'returns true when won on a diagonal' do
      board = GameBoard.new
      board.co_ords = [0, 1, 2, "O", "X", "O", 6, "O", 8, "X"]
      expect(board.game_won?('O')).to eq true
    end

    it 'returns true when won on a vertical' do
      board = GameBoard.new
      board.co_ords = [0, "O", 2, 3, "O", 5, "X", "O", "X", 9]
      expect(board.game_won?('O')).to eq true
    end
  end
end
