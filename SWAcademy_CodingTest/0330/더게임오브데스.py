N, M, K  = list(map(int,input().split(" ")))
data = [0]
temp= list(map(int,input().split(" ")))
for i in temp:
    data.append(i)
# M 종료
# K 시작


map = [ [0] * (N+1) for _ in range(N+1) ]
visited = [0] * (N+1)


def DFS(s):
    visited[s] = 1
    for i in range(1, N+1):
        if  visited[i] == 0 and map[s][i] == 1:
            DFS(i)

for i in range(1,N+1):
    map[i][data[i]] = 1


DFS(K)
if visited[M] == 1:
    print("YES")
else:
    print("NO")
