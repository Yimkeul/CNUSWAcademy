N = int(input())
data = list(map(int,input().split(" ")))

ans = []
for i in range(len(data)):
    sum = data[i]
    ans.append(sum)
    for j in range(i+1,len(data)):
        sum += data[j]
        ans.append(sum)
        
print(max(ans))


