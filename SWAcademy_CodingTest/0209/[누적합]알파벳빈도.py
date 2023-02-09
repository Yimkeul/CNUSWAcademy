N , M = list(map(int,input().split(" ")))
S = list(input())
ary = []
for i in S:
    if i =="e":
        ary.append(1)
    else:
        ary.append(0)
for i in range(M):
    L , R = list(map(int,input().split(" ")))
    sum =0
    for j in range(L-1,R):
        sum += ary[j]
    print(sum)

