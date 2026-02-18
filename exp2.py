def is_safe(board,row,col,N):
    for i in range(col):
        if board[row][i]==1:
            return False

    i,j=row,col
    while i>=0 and j>=0:
        if board[i][j]==1:
            return False
        i-=1; j-=1

    i,j=row,col
    while i<N and j>=0:
        if board[i][j]==1:
            return False
        i+=1; j-=1

    return True


def solve(board,col,N):
    if col>=N:
        return True

    for i in range(N):
        if is_safe(board,i,col,N):
            board[i][col]=1
            if solve(board,col+1,N):
                return True
            board[i][col]=0
    return False


N=int(input("Enter number of queens: "))
board=[[0]*N for _ in range(N)]

if solve(board,0,N):
    for row in board:
        print(row)
