from collections import deque

N ,M = list(map(int,input().split(" ")))

graph = [[False] * (N+1) for _ in range(N+1)]
visited = [False] * (N+1)

for _ in range(M):
    U, V = list(map(int,input().split(" ")))
    graph[U][V] = True
    graph[V][U] = True

def BFS (V) :
    queue = deque()
    queue.append(V)
    visited[V] = True
    while queue:
        v = queue.popleft()
        print(v , end = " ")
        for i in range(1, N+1):
            if not visited[i] and graph[v][i] :
                queue.append(i)
                visited[i] = True



BFS(1)