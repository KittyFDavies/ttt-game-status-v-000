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
    if board[win_combination[0]] == board[win_combination[1]] && board[win_combination[0]] == board[win_combination[2]]
#      if win_combination.all do |position|
#        position_taken?(board, position)
          return win_combination
#        end
#      end
    end
    # if above and taken, return combination//else return nil/false
  end
end

def full?(board)
  if board.include?(" " || "")
    false
  else
    true
  end
end

def draw?(board)
  if full?(board)
    if won?(board)
      return false
    else
      return true
    end
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    return true
  end
end

def winner(board)
  if won?(board).include("X")
    return "X"
  else
    return "O"
  end  
end
