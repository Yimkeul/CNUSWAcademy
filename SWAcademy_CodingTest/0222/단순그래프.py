N , M = list(map(int,input().split(" ")))
"""
단순 그래프는 다음과 같다
1. 두 정점을 잇는 간선은 최대 한개
2. 자기 자신을 잇는 간선이 없어야 한다.
"""
graph = [[0] * (N+1) for _ in range(N+1)]


for _ in range(M):
    U , V = list(map(int,input().split(" ")))
    graph[U][V] += 1
    graph[V][U] += 1 

state = "YES"
for i in range(N+1):
    for j in range(N+1):
        if graph[i][i] == 1 or graph[i][j] >=2:
            state = "NO"
print(state)
