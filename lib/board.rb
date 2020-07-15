# frozen_string_literal: true

# Holds data for win conditions and current game state.
class GameBoard
  attr_accessor :co_ords
  attr_reader :win_combos

  def initialize
    @co_ords = (0..9).to_a
    @win_combos = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
      [1, 4, 7],
      [2, 5, 8],
      [3, 6, 9],
      [3, 5, 7],
      [1, 5, 9]
    ]
  end

  # Removing @ and using accessor method increases ABC score. Unsure why
  def draw_board
    %(
  #{@co_ords[7]} | #{@co_ords[8]} | #{@co_ords[9]}
  ---------
  #{@co_ords[4]} | #{@co_ords[5]} | #{@co_ords[6]}
  ---------
  #{@co_ords[1]} | #{@co_ords[2]} | #{@co_ords[3]}
  )
  end

  def game_won?(player)
    win_combos.any? do |line|
      line.all? { |mark| co_ords[mark] == player }
    end
  end
end
