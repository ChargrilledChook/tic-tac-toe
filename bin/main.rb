# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/referee'
require_relative '../lib/player'

def boot_game
  player_1 = Player.new('P1', 'O')
  player_2 = Player.new('P2', 'X')
  board = GameBoard.new
  ref = Referee.new('ref')
  board.draw_board
  ref.game_loop(player_1, player_2, board)
end

boot_game
