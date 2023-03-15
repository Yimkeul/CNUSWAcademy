def f(N):
    return N*(N+1)//2

X = int(input())

lo , hi = -1 , X

while lo + 1 < hi:
    mid = (lo+hi)//2
    # print(lo,hi ,mid,f(mid))

    if f(mid) < X :
        lo = mid   
    else :
        hi = mid
print(hi)

