from queue import PriorityQueue

que = PriorityQueue()

N = int(input())
for i in range(N):
    data = list(input().split(" "))
    if len(data) == 1 :
        if que.empty():
            print(-1)
        else:
            print(que.get())
    else:
        que.put(int(data[1]))