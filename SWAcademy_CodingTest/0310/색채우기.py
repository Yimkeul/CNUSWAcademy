from collections import deque

# N : 세로 , M : 가로
N , M = list(map(int,input().split(" ")))
grid = [["$"] *(M+1) for _ in range(N+1)]
visited = [[0] *(M+1) for _ in range(N+1)]

# 반드시 빈칸인 위치 좌표 == BFS 시작 위치
X, Y = list(map(int,input().split(" ")))

dx = [0,0,-1,1]
dy = [1,-1,0,0]

for i in range(1,N+1):
    data = list(input())
    for j in range(len(data)):
        grid[i][j+1] = data[j]


def BFS(x,y):
    queue = deque()
    queue.append([x,y])
    visited[y][x] = 1
    grid[y][x] = "@"
    while queue:
        x,y = queue.popleft()
        for i in range(4):
            nx = x + dx[i]
            ny = y + dy[i]
            if 0<nx<=M and 0<ny<=N:
                if visited[ny][nx] != 1 and grid[ny][nx] == ".":
                    visited[ny][nx] = 1
                    grid[ny][nx] = "@"
                    queue.append([nx,ny])

BFS(Y,X)

for i in range(1,N+1):
    for j in range(1,M+1):
        print(grid[i][j] , end = "")
    print()
    