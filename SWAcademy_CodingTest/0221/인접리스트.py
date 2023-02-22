N, M = list(map(int,input().split(" ")))
adj = [[] for _ in range(N+1)]

for i in range(M):
    U ,V = list(map(int,input().split(" ")))
    adj[U].append(V)
    adj[V].append(U)

for i in range(1,N+1):
    if len(adj[i]) == 0:
        print(-1)
    else:
        print(*sorted(adj[i]))
    


