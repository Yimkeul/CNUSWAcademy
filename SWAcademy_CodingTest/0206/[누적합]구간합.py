N , M = list(map(int,input().split(" ")))
data = list(map(int,input().split(" ")))
for i in range(M):
    L , R = list(map(int,input().split(" ")))
    sum = 0
    for j in range(L-1,R):
        sum += data[j]
    print(sum)
        
