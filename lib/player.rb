# frozen_string_literal: true

class Player
  attr_reader :name
  attr_accessor :symbol

  @@symbols = []

  def self.symbols
    @@symbols
  end

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @@symbols << symbol
  end
end
