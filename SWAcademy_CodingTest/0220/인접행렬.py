N ,M = list(map(int,input().split(" ")))

SimpleGraph = [ [0]*(N+1) for _ in range(N+1)  ]

for i in range(M):
    U, V = list(map(int,input().split(" ")))
    SimpleGraph[U][V] =1 
    SimpleGraph[V][U]  = 1

for i in range(1,N+1):
    for j in range(1,N+1):
        print(SimpleGraph[i][j] , end = " ")
    print()