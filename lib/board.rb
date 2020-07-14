# frozen_string_literal: true

class GameBoard
  attr_accessor :co_ords

  def initialize
    @co_ords = (0..9).to_a
  end

  def draw_board
    %(
  #{@co_ords[7]} | #{@co_ords[8]} | #{@co_ords[9]}
  ---------
  #{@co_ords[4]} | #{@co_ords[5]} | #{@co_ords[6]}
  ---------
  #{@co_ords[1]} | #{@co_ords[2]} | #{@co_ords[3]})
  end
end

puts GameBoard.new.draw_board
