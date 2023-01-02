# 부분합
import sys
_ = input()
input_ = list(map(int,sys.stdin.readline().split()))
q =int(input())
for i in range(q):
    a, b = map(int, input().strip().split(' '))
    sum =0
    for j in range (a-1,b):
        sum += input_[j]
    print(sum)
