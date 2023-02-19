from collections import deque

N , M = list(map(int,input().split(" ")))
queue = deque()

for i in range(N):
    queue.append(i+1)

def isEmpty(queue):
    if len(queue) == 0:
        return True
    return False

for i in range(M):
    contorl = input()
    if contorl =="raise":
        pop = queue.popleft()
        queue.append(pop)
    else:
        if isEmpty(queue) == False:
            queue.popleft()

print(queue[0])