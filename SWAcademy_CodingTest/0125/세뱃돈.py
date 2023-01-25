n = int(input())
data = list(map(int,input().split(" ")))
for i in range(n):
    less = 0
    over = 0
    for j in range(n):
        if data[i] > data[j]:
            over +=1
        elif data[i] < data[j]:
            less +=1
        
    print(less,over)
