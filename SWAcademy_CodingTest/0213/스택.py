N = int(input())
stack = []
for i in range(N):
    data = list(input().split(" "))
    # pop
    if len(data) == 1:
        if len(stack) == 0:
            print(-1)
        else:
            print(stack.pop(-1))
    else:
        stack.append(data[1])