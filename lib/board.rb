# frozen_string_literal: true

class GameBoard
  attr_accessor :co_ords

  def initialize
    @co_ords = (0..9).to_a
  end

  def draw_board
    puts ''
    puts " #{@co_ords[7]} | #{@co_ords[8]} | #{@co_ords[9]} "
    puts '-----------'
    puts " #{@co_ords[4]} | #{@co_ords[5]} | #{@co_ords[6]} "
    puts '-----------'
    puts " #{@co_ords[1]} | #{@co_ords[2]} | #{@co_ords[3]} "
    puts ''
  end
end
