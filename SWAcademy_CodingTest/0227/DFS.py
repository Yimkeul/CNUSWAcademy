N, M = list(map(int,input().split(" ")))

# 그래프
graph = [[False] * (N+1) for _ in range(N+1)]

# 방문 기록
visited = [False] * (N+1)



for _ in range(M):
    U ,V = list(map(int,input().split(" ")))
    graph[U][V] = True
    graph[V][U] = True

def DFS (node) :
    visited[node] = True
    print(node, end = " ")
    for i in range(1,N+1):
        if not visited[i] and graph[node][i]:
             DFS(i)

             
DFS(1)