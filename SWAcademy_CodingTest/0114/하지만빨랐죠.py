import math

T = int(input())
for _ in range(T):
    A, B = map(int,input().split(" "))
    if math.gcd(A,B) == 1:
        print("Perfect")
    else:
        print("Not even close")