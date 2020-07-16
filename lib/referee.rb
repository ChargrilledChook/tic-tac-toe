# frozen_string_literal: true

require 'colorize'

# Boots and loops a single game of TicTacToe. Board and player dependencies are injected here.
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

  # Infinite loop that switches player each iteration. Relies on #check_gameover to exit loop
  def game_loop(current_player = p1)
    move_counter = 0
    loop do
      move = get_move(current_player)
      board.co_ords[move] = current_player.symbol
      move_counter += 1
      puts board.draw_board
      check_gameover(current_player, move_counter)
      current_player = current_player == p1 ? p2 : p1
    end
  end

  # Recursively calls itself until it gets valid input
  def get_move(player)
    print "#{player.name}, your move: "
    move = gets.chomp.to_i
    if check_move?(move)
      move
    else
      get_move(player)
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

  # Will exit the whole program if a win or draw condition is true
  def check_gameover(player, counter)
    if board.game_won?(player.symbol)
      puts "#{player.name} wins!"
      exit
    elsif counter >= 9
      puts "It's a tie. Woo."
      exit
    end
  end
end
