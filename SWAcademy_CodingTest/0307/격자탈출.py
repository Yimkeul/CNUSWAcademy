from collections import deque


# N 세로, M 가로
N , M = list(map(int,input().split(" ")))
graph = [[0] *(M+1) for i in range(N+1)]
visited = [[0] *(M+1) for i in range(N+1)]

for i in range(1,N+1):
    data = list(input())
    for j in range(len(data)):
        graph[i][j+1] = data[j]




dx = [0,0,-1,1] 
dy = [1,-1,0,0]


state = "NO"
def BFS(x,y ):
    global state
    queue = deque()
    queue.append([x,y])
    while queue:
        x,y = queue.popleft()
        for i in range(4):
            nx = x + dx[i]
            ny = y + dy[i]
            if x == M and y == N:
                state = "YES"
                break
            if 0<nx<=M and 0<ny<=N:
                if visited[ny][nx] == 0 and graph[ny][nx] == ".":
                    visited[ny][nx] = 1
                    queue.append([nx,ny])

BFS(1,1)
print(state)
