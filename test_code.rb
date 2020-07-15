def game_won?(board)
  case board
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
