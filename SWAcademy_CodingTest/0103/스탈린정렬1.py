# 스탈린 정렬이 완성 되었는지 확인 함수
def check(array):
    cnt = 0
    for i in range(1,len(array)):
        if(array[i-1] > array[i]):
           cnt =cnt+1
    if cnt > 0:
        return False
    else:
        return True    

TestCase = int(input())
for t in range(TestCase):
    _ = int(input())
    data = list(map(int,input().split()))
    while True:
        for i in range(1, len(data)):
            if(data[i-1] > data[i]):
                data.pop(i)
                break
        if(check(data) == True):
            break



    for i in data:
        print(i, end=" ")
    print()

