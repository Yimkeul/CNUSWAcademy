TestCase = int(input())
for _ in range(TestCase):
    _ = input()
    data = list(input())
    start, finish = list(map(int,input().split(" ")))

    
    state = True
    if len(data) <=2 :
        state = False

    else :
        cntM = 0
        if data[start-1]  == "U":
            for i in range(start,finish):
                if data[i] != "m":
                    state = False
                    break
                else:
                    cntM +=1
            if cntM <2:
                state = False
            
        else:
            state = False
    
    if state == True:
        print("YES")
    else:
        print("NO")
    
