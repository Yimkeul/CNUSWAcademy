from collections import deque

N, M = list(map(int,input().split(" ")))
# 그래프
graph = [[False] * (N+1) for _ in range(N+1)]

# 방문 기록
visited = [False] * (N+1)

#거리
dist = [0]  * (N+1)


for _ in range(M):
    U ,V = list(map(int,input().split(" ")))
    graph[U][V] = True
    graph[V][U] = True


def BFS(node):
    # BFS 는 queue
    queue = deque()
    queue.append(node)
    visited[node] = True
    while queue:
        pop = queue.popleft()
        # print(pop , end = " ")
        for i in range(1,N+1):
            if not visited[i] and graph[pop][i]:
                queue.append(i)
                dist[i] = dist[pop]+ 1
                visited[i] = True

BFS(1)


for i in range(1,N+1):
    print(dist[i], end = " " )
