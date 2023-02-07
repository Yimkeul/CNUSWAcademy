_ = input()
data = list(map(int,input().split(" ")))
sumary = []
sumary.append(data[0])
print(sumary[0], end=" ")
for i in range(1,len(data)):
    sumary.append(sumary[i-1]+data[i])
    print(sumary[i], end=" ")
