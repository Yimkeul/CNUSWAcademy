"""
5
180 178 179 185 176
12
1 180 181 358 359 537 538 722 723 898 999 2020
"""
#33
"""
5
180 178 179 185 176
10
1 180 181 358 359 537 538 722 723 898

"""


N = int(input())
B = list(map(int,input().split(" ")))
M = int(input())
Q = list(map(int,input().split(" ")))


prefixB = B
for i in range(1,len(B)):
    prefixB[i] += prefixB[i-1]
X = len(prefixB)
maxValue = max(prefixB)
def diff (num):
    if num >maxValue:
        while num > maxValue:
            num -= maxValue
        return num
    else:
        return num

for i in range(len(Q)):
    Q[i] = diff(Q[i])


sum = 0
for i in Q:
    lo , hi = -1, X
    while lo+1 < hi:
        mid = (lo+hi)//2
        if prefixB[mid] < i:
            lo = mid
        else:
            hi = mid
    sum += (hi+1)

print(sum%1000000007)
