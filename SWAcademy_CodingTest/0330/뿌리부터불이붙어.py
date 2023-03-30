from collections import deque

N = int(input())
tree =[ [0]*(N+1) for _ in range(N+1)] 
visited = [0]*(N+1)
# dist = [0] * (N+1)
maxDistBfs = []

for i in range(N-1):
    U, V = list(map(int,input().split(" ")))
    tree[U][V] = 1
    tree[V][U] = 1
    


def BFS(s):
    queue = deque()
    queue.append(s)
    visited[s] = 1
    dist= [0]*(N+1)
    while queue:
        pop  = queue.popleft()
        for i in range(1,N+1):
            if visited[i] == 0 and tree[pop][i] == 1:
                queue.append(i)
                dist[i] = dist[pop] +1
                visited[i] = 1
    return max(dist)    
    


for i in range(1,N+1):
    # print(f"{i}번째 , 값{dist} , {max(dist)}")
    maxDistBfs.append(BFS(i))
    visited = [0]*(N+1)
    


print(min(maxDistBfs))