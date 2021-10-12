board = [[' ', '|', ' ', '|',' '],
        ['-','+','-','+','-'],[' ', '|', ' ', '|',' '],
        ['-','+','-','+','-'],[' ', '|', ' ', '|',' ']]

p1 = 'x'
p2 = 'o'

'''
Prints board
'''
def printBoard(board):
    for line in board:
        for item in line:
            print(item, end=" ")
        print()

# Checks if user entry is valid
def checkValid(row, col):
    if row < 0 or row > 2 or col < 0 or col > 2:
        print("Invalid entry")
        return False
    if board[row*2][col*2] != " ":
        print("Already taken")
        return False
    return True
        
'''
Take user input to begin game
'''
def playerMove(player):
    x = int(input("Enter row (0-2): "))
    y = int(input("Enter column (0-2): "))
    valid = checkValid(x, y)
    if not valid:
        playerMove(player)
    else:
        board[x*2][y*2] = player

def checkWin(player):
    #checks each row for win
    for row in range(3):
        if (board[row * 2][0] == board[row * 2][2] == 
            board[row * 2][4] == player):
            return True           
    
    #check columns 
    for col in range(3):
        if (board[0][col * 2] == board[2][col * 2] == 
            board[4][col * 2] == player):  
            return True

    #check diagonals
    if (board[0][0] == board[2][2] == 
        board[4][4] == player):
        return True
    return False

    
'''
Game Play
'''
def tictactoe():
    player = p1
    moves = 0
    win = False
    printBoard(board)
    for i in range(10):
        playerMove(player)
        printBoard(board)
        moves += 1
        if moves >= 5:
            win = checkWin(player)
        if win:
            print("Player "+player+" wins!")
            break
        if (player == p1):
            player = p2
        else:
            player = p1
    
    if moves == 9:
        print("Tie game")




if __name__ == "__main__":
  tictactoe()
