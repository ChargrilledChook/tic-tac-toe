# frozen_string_literal: true

require 'colorize'

# Holds all relevant objects. Boots and loops a single game of TicTacToe.
class Referee
  attr_reader :p1, :p2, :board, :symbols

  def initialize
    @p1 = Player.new('P1'.red, 'O'.red)
    @p2 = Player.new('P2'.blue, 'X'.blue)
    @symbols = [p1.symbol, p2.symbol]
    @board = GameBoard.new
  end

  def new_game
    puts %(
      ~~~ Welcome to Tic Tac Toe! ~~~
    ).colorize(:black).colorize(background: :white)
    puts board.draw_board
    game_loop
  end

  private

  def game_loop(turn = p1)
    move_counter = 0
    loop do
      move = get_move(turn)
      board.co_ords[move] = turn.symbol
      move_counter += 1
      puts board.draw_board
      check_gameover(turn, move_counter)
      turn = turn == p1 ? p2 : p1
    end
  end

  def check_move?(move)
    if symbols.include?(board.co_ords[move])
      puts 'Square already taken!'
      false
    elsif !move.between?(1, 9)
      puts 'Enter a number between 1 and 9'
      false
    else
      true
    end
  end

  def get_move(player)
    print "#{player.name}, your move: "
    move = gets.chomp.to_i
    if check_move?(move)
      move
    else
      get_move(player)
    end
  end

  def check_gameover(turn, counter)
    if board.game_won?(turn.symbol)
      puts "#{turn.name} wins!"
      exit
    elsif counter >= 9
      puts "It's a tie. Woo."
      exit
    end
  end
end
