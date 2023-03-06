N, M = list(map(int,input().split(" ")))

graph = [[0]*(N+1) for _ in range(N+1)]
visited = [0]*(N+1)

for _ in range(M):
    U, V = list(map(int,input().split(" ")))
    graph[U][V] = 1
    graph[V][U] = 1

cnt = 0
def DFS (node) :
    # node == startpoint
    # DFS 는 재귀 또는 스택이다
    visited[node] = 1
    print(node , end= " ")
    for i in range(1,N+1):
        if graph[node][i] == 1 and visited[i] ==0 :
            DFS(i)

for i in range(1,N+1):
    # print("for : ", i , visited , cnt )
    if visited[i] == 0:
        DFS(i)
        cnt +=1
    # print("fin DFS")
print(cnt)

            
