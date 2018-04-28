# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

#  1 | 2 | 3
# -----------
#  4 | 5 | 6
# -----------
#  7 | 8 | 9

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  #return a winning combination, or return false
  WIN_COMBINATIONS.select do | winning_combinations |
    if winning_combinations
      winning_combinations.all?
    else
      false
    end
  end
end  
