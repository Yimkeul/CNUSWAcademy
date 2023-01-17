def findStartPoint (ismap, row, col) :
    for i in range(row):
        for j in range(col):
            if ismap[i][j] == "@":
                return (i , j)

    

"""
R = col + 1
L = col - 1
U = row - 1
D = row + 1
"""

def doMove (ismap,controlMove , startRow, startCol , maxRow, maxCol) :
    tempRow = startRow
    tempCol = startCol
    hp = 0
    for i in controlMove:
        if i == "R":
            nc = tempCol +1
            if nc >=0 and nc < maxCol and ismap[tempRow][nc] != "#":
                if ismap[tempRow][nc] == "^":
                    hp +=1
                tempCol = nc
            else:
                if ismap[tempRow][tempCol] == "^":
                    hp +=1
        elif i == "L":
            nc = tempCol -1
            if nc >=0 and nc < maxCol and ismap[tempRow][nc] != "#":
                if ismap[tempRow][nc] == "^":
                    hp +=1                
                tempCol = nc
            else:
                if ismap[tempRow][tempCol] == "^":
                    hp +=1                
        elif i == "U":
            nr = tempRow -1
            if nr >=0 and nr < maxRow and ismap[nr][tempCol] != "#":
                if ismap[nr][tempCol] == "^":
                    hp +=1                
                tempRow = nr
            else:
                if ismap[tempRow][tempCol] == "^":
                    hp +=1                
        elif i == "D":
            nr = tempRow +1
            if nr >=0 and nr < maxRow and ismap[nr][tempCol] != "#":
                if ismap[nr][tempCol] == "^":
                    hp +=1                                
                tempRow = nr
            else:
                if ismap[tempRow][tempCol] == "^":
                    hp +=1                
    print(tempRow+1,tempCol+1,hp)    


T = int(input())
for _ in range(T):
    row , col = list(map(int,input().split(" ")))
    ismap = [list(input())  for _ in range(row)]
    startRow , startCol = findStartPoint(ismap, row, col)
    _ = input()
    controlMove = list(input())
    doMove(ismap,controlMove, startRow, startCol, row, col)
