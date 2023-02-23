N ,M = list(map(int,input().split(" ")))
simpleGraph = [[0]*(N+1) for _ in range(N+1)]
for _ in range(M):
    U,V = list(map(int,input().split(" ")))
    simpleGraph[U][V] = 1
    simpleGraph[V][U] = 1

result = 0
for i in range(1,N+1):
    result += sum(simpleGraph[i])
print(result)