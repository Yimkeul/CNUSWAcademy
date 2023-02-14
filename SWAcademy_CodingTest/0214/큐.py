N = int(input())
queue = []
for i in range(N):
    data = list(input().split(" "))
    if len(data) == 1:
        if len(queue) == 0:
            print(-1)
        else:
            print(queue.pop(0))
    else:
        queue.append(int(data[1]))