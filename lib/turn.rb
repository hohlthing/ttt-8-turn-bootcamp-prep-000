def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == FALSE
    return TRUE
  else
    return FALSE
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == NIL
    return FALSE
  elsif board[index] == "X" || board[index] == "O"
    return TRUE
  end
end

def move(array, index, value="X")
  array[index] = value
end

