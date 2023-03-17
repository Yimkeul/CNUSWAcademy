from queue import PriorityQueue

pq = PriorityQueue()


N = int(input())

data = list(map(int,input().split(" ")))
for i in range(N):
    pq.put(data[i])


while pq.qsize()>=2:
    firstPop = pq.get()
    secondPop = pq.get()
    
    if (firstPop+secondPop)%2 == 1:
        pq.put(firstPop+secondPop)
    


if pq.empty() :
    print(-1)
else:
    print(pq.get())
     
