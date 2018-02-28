# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # mid row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left col
  [1, 4, 7], # mid col
  [2, 5, 8], # right col
  [0, 4, 8], # l-to-r diagonal
  [2, 4, 6] # r-to-l diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    win_index_4 = win_combination[3]
    win_index_5 = win_combination[4]
    win_index_6 = win_combination[5]
    win_index_7 = win_combination[6]
    win_index_8 = win_combination[7]
  end
  if (win_index_1[0] == "X" && win_index_1[1] == "X" && win_index_1[2] == "X") || (win_index_1[0] == "O" && win_index_1[1] == "O" && win_index_1[2] == "O")
    return win_index_1
  elsif win_index_2[0] == "X" && win_index_2[1] == "X" && win_index_2[2] == "X"
    return win_index_2
    
  end
end

def full?

end

def draw?

end

def over?

end

def winner

end