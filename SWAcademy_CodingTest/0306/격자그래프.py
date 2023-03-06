N, M = list(map(int, input().strip().split(' ')))

textgraph = [[0] *(M+1) for _ in range(N+1)]

for i in range(N):
    data = list(input())
    for j in range(M):
        textgraph[i+1][j+1] = data[j]
        
dx = [0,0,-1,1]
dy = [1,-1,0,0]
cnt = 0

for i in range(1,N+1):
    for j in range(1,M+1):
        if textgraph[i][j] == ".":
            textgraph[i][j] = "#"
            for k in range(4):
                nx = j + dx[k]
                ny = i + dy[k]
                if nx <=M and nx>0 and ny <=N and ny>0:
                    if textgraph[ny][nx] == ".":
                        cnt +=1
print(N*M,cnt)

