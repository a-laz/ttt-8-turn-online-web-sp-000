def display_board(board)
  seperator = "-----------"
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts seperator
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts seperator
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  if valid_move?(board, index) == true
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  end
  move(board, index)
  display_board(board)
end
