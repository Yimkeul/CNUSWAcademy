#  (()(()))
data = list(input())
stack = []
for i in data:
    stack.append(i)

cnt = 0
while len(stack) != 0:
    pop = stack.pop()
    if pop == ")":
        cnt -=1
    else:
        cnt +=1

if cnt != 0:
    print("NO")
else:
    print("YES")