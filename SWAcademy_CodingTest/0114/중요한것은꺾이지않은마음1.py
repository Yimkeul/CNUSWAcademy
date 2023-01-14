T = int(input())
for _ in range(T):
    N , M, K = map(int,input().split(" "))
    Days = list(map(int,input().split(" ")))
    #M원이상 K 타겟
    stock = Days[K-1]
    findDay = 0

    for i in range(K,len(Days)):
        if Days[i] >= stock + M:
            findDay = i+1
            break

    if findDay == 0:
        print("JB")
    else:
        print(findDay)
