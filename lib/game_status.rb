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
  WIN_COMBINATIONS.select do | win_combo |
    position1 = win_combo[0]
    position2 = win_combo[1]
    position3 = win_combo[3]
    board(position1) == board(postion2) && board(position2) == board(position3)   
end  
