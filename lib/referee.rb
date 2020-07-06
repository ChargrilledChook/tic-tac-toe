class Referee
  def initialize(name)
    @name = name
  end

  def get_move(player)
    print ("#{player.name}, your move: ")
    gets.chomp().to_i
  end

  def check_move(board, move, symbols)
    if (symbols.include?(board.co_ords[move]))
      puts "Square already taken!"
      return false
    elsif !(move.between?(1,9))
      puts "Enter a number between 1 and 9"
      return false
    else 
      return true
    end
  end

  def game_won?(board)
    case
    when board[5] == board[4] && board[5] == board[6]
      true
    when board[5] == board[2] && board[5] == board[8]
      true
    when board[5] == board[1] && board[5] == board[9]
      true
    when board[5] == board[3] && board[5] == board[7]
      true
    when board[1] == board[2] && board[1] == board[3]
      true
    when board[1] == board[4] && board[1] == board[7]
      true
    when board[9] == board[3] && board[9] == board[6]
      true
    when board[9] == board[7] && board[9] == board[8]
      true
    else
      false
    end
  end

  def game_loop(p1, p2, board)
    game_over = false
    turn = p1
    move_counter = 0
    while game_over == false do
      move = get_move(turn)
      while !(self.check_move(board, move, Player.symbols)) do
        move = get_move(turn)
      end
      board.co_ords[move] = turn.symbol
      move_counter += 1
      board.draw_board()
      if game_won?(board.co_ords)
        puts "#{turn.name} wins!"
        game_over = true
      elsif move_counter >= 9 
        puts "It's a tie. Woo."
        game_over = true
      else
        turn == p1 ? turn = p2 : turn = p1
      end
    end
  end
end