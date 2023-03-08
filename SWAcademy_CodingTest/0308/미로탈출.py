# N 세로, M 가로
N , M = list(map(int,input().split(" ")))
miro = [[0] *(M+1) for _ in range(N+1)]
visited = [[0] *(M+1) for _ in range(N+1)]

for i in range(1,N+1):
    data = list(input())
    for j in range(len(data)):
        miro[i][j+1] = data[j]


dx = [0,0,-1,1] 
dy = [1,-1,0,0]

def DFS (x, y ):
    visited[y][x] = 1
    for i in range(1,N+1):
        for j in range(1, M+1):
            for k in range(4):
                nx = x + dx[k] # M
                ny = y + dy[k] # N
                if 0< nx <= M and 0 < ny <=N:
                    if visited[ny][nx] == 0 and miro[ny][nx] == "#":
                        DFS(nx,ny)

cnt  = 0
for i in range(1,N+1):
    for j in range(1, M+1):
        # print(f"miro : {miro[i][j]},[x,y] : {j,i} , visited : {visited[i][j]} , cnt : {cnt}")
        if visited[i][j] == 0 :
            if miro[i][j] == "#":
                DFS(j,i)
                cnt +=1
print(cnt)