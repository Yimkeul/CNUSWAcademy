TestCase = int(input())
for _ in range(TestCase):
    N ,M = list(map(int,input().split()))
    data = list(input())
    cnt = 0
    startPoint = 0
    finishPoint = 0
    for i in range(len(data)):
        if data[i] == "@":
            startPoint = i
        if data[i] == "O":
            finishPoint = i
    if startPoint<finishPoint:
        for i in range(startPoint,(finishPoint+1)):
            if data[i] == "#":
                cnt +=1
    else:
        for i in range(startPoint,finishPoint,-1):
            if data[i] == "#":
                cnt +=1
    if M >=cnt :
        print("HAHA!")
    else:
        print("HELP!")