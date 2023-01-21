def check (data) :
    temp = [0 for _ in range( max(data)+1)]
    for i in data:
        temp[i] += 1
    key = 0
    for i in range(len(temp)):
        if temp[i] == 1:
            key = i
    for i in range(len(data)):
        if data[i] == key:
            print(i+1)

    
T = int(input())
for _ in range(T):
    _ = input()
    data = list(map(int,input().split(" ")))
    check(data)

