TestCase = int(input())
for i in range(TestCase):
    N , M = list(map(int,input().split(" ")))
    data = list(input())
    way1 = 0
    way2 = 0
    startPoint = 0
    finishPoint = 0
    glove = 0
    for i in range(len(data)):
        if data[i] == "@":
            startPoint = i
        elif data[i] == "O":
            finishPoint = i
        elif data[i] == "G":
            glove = i
    if startPoint<finishPoint:
        for i in range(startPoint,(finishPoint+1)):
            if data[i] == "#":
                way1 +=1
    else:
        for i in range(startPoint,finishPoint,-1):
            if data[i] == "#":
                way1 +=1
    
    if startPoint<glove:
        for i in range(startPoint,(glove+1)):
            if data[i] == "#":
                way2 +=1
    else:
        for i in range(startPoint,glove,-1):
            if data[i] == "#":
                way2 +=1

    if(min(way1,way2) > M ):
        print("HELP!")
    else:
        print("HAHA!")

# 4
# 7 1
# @####OG
# 8 2
# G###@##O
# 8 2
# O###@##G
# 5 0
# OG##@