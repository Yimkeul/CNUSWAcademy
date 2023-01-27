N = int(input())

data = [ [ "*" for _ in range(N)] for _ in range(N)]

r1, c1 , r2 , c2 = list(map(int,input().split(" ")))

for i in range(N): #r
    for j in range(N): #c
        if i>= min(r1,r2)-1 and i<= max(r1,r2)-1 and j >=min(c1,c2)-1 and  j <=max(c1,c2)-1:
            data[i][j] = "."

for i in range(N):
    for j in range(N):
        print(data[i][j],end="")
    print()