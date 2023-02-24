N, M = list(map(int,input().split(" ")))
simplegraph = [[0]*(N+1) for _ in range(N+1)]
for _ in range(M):
    U, V = list(map(int,input().split(" ")))
    simplegraph[U][V] = 1
    simplegraph[V][U] = 1
_ = input()

data = list(map(int,input().split(" ")))


state = "YES"
for i in range(len(data)-1):
    if simplegraph[data[i]][data[i+1]] == 0:
        state = "NO"
print(state)
