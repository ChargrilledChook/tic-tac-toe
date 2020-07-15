# frozen_string_literal: true

class Referee
  def initialize(name)
    @name = name
  end

  def get_move(player)
    print "#{player.name}, your move: "
    gets.chomp.to_i
  end

  def check_move(board, move, symbols)
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

  def game_loop(p1, p2, board)
    game_over = false
    turn = p1
    move_counter = 0
    while game_over == false
      move = get_move(turn)
      move = get_move(turn) until check_move(board, move, Player.symbols)
      board.co_ords[move] = turn.symbol
      move_counter += 1
      puts board.draw_board
      if board.game_won?(turn.symbol)
        puts "#{turn.name} wins!"
        p board.co_ords
        game_over = true
      elsif move_counter >= 9
        puts "It's a tie. Woo."
        game_over = true
      else
        turn = turn == p1 ? p2 : p1
      end
    end
  end
end
