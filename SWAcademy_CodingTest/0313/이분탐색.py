N, X = list(map(int,input().split(" ")))

data = list(map(int,input().split(" ")))

lo , hi = -1 , N

while lo + 1 < hi:
    mid = (lo+hi)//2
    print(lo,hi)

    if data[mid] < X:
        lo = mid
    else:
        hi = mid

print(hi)
