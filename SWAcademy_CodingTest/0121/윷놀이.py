data = list(input())
cnt = 0
"""
0000
모 : 5
0001
도 : 1
0011
개 : 2
0111
걸 :3
1111:
윳 : 4


"""


for i in data:
    if int(i) == 1:
        cnt+=1
    

if cnt == 4:
    print(4)
elif cnt == 3:
    print(3)
elif cnt == 2:
    print(2)
elif cnt == 1:
    print(1)
else:
    print(5)
