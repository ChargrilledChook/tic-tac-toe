# frozen_string_literal: true

# Main responsibility is passing its symbol to board and referee
class Player
  attr_reader :name
  attr_accessor :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end
