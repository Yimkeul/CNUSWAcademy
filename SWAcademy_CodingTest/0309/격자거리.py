from collections import deque

N, M = list(map(int,input().split(" ")))

grid = [[0]*(M+1) for _ in range(N+1)]
visited = [[0]*(M+1) for _ in range(N+1)]

distGrid = [[-1]*(M+1) for _ in range(N+1)]
distGrid[1][1] =0

for i in range(1,N+1):
    data = list(input())
    for j in range(len(data)):
        grid[i][j+1] = data[j]

dx = [0,0,-1,1]
dy = [1,-1,0,0]


def BFS(x,y):
    # global dist
    queue= deque()
    queue.append([x,y])
    visited[y][x] = 1
    while queue:
        x,y = queue.popleft()
        for i in range(4):
            nx = x + dx[i]
            ny = y + dy[i]
            if 0<nx<=M and 0 <ny <=N:
                if visited[ny][nx] == 0 and grid[ny][nx] == ".":
                    visited[ny][nx] = 1
                    distGrid[ny][nx] = distGrid[y][x] + 1 
                    queue.append([nx,ny])
BFS(1,1)

for i in range(1,N+1):
    for j in range(1,M+1):
        print(distGrid[i][j], end= " ")
    print()
        
        




