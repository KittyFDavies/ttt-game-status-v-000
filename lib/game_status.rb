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

# def won?(board)
#  WIN_COMBINATIONS.each { |win_combination|
#    win_combination.each { |win_index|
#      if board[win_index[0]] == board[win_index[1]] && board[win_index[2]]
#        return win_combination
#      end
#    }
#  }
#end

 def won?(board)
  WIN_COMBINATIONS.each { |win_index|
    if win_index[0] == win_index[1] && win_index[2]
      return win_combination
    end
  }
end

def full?(board)
  if board.include?(" " || "")
    false
  else
    true
  end
end

def draw?(board)

end

def over?(board)

end

def winner(board)

end
