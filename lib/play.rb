# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def play(board)
  turn(board)
  if (position_taken?(board, 1) && board[0] == board[1] && board[0] == board[2]) || (position_taken?(board, 4) && board[3] == board[4] && board[3] == board[5]) || (position_taken?(board, 7) && board[6] == board[7] && board[6] == board[8]) || (position_taken?(board, 1) && board[0] == board[3] && board[0] == board[6]) || (position_taken?(board, 2) && board[1] == board[4] && board[1] == board[7]) || (position_taken?(board, 3) && board[2] == board[5] && board[2] == board[8]) || (position_taken?(board, 1) && board[0] == board[4] && board[0] == board[8]) || (position_taken?(board, 3) && board[2] == board[4] && board[2] == board[6])