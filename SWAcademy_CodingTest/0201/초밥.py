_ = int(input())
data = list(map(int,input().split(" ")))
ans = []
for i in data:
    ans.append(abs(i-320))

_min = min(ans)

for i in range(len(ans)):
    if ans[i] == _min:
        print(i+1)
        break    
        