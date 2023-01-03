# # 스탈린 정렬이 완성 되었는지 확인 함수
# def check(array):
#     cnt = 0
#     for i in range(1,len(array)):
#         if(array[i-1] > array[i]):
#            cnt =cnt+1
#     if cnt > 0:
#         return False
#     else:
#         return True    

# TestCase = int(input())
# for t in range(TestCase):
#     _ = int(input())
#     data = list(map(int,input().split()))
#     while True:
#         for i in range(1, len(data)):
#             if(data[i-1] > data[i]):
#                 data.pop(i)
#                 break
#         if(check(data) == True):
#             break



    # for i in data:
    #     print(i, end=" ")
    # print()


import sys
TestCase = int(input())
for _ in range(TestCase):
    _ = int(input())
    data = list(map(int, sys.stdin.readline().split()))
    i = 1
    if(len(data) == 1):
        print(data[0])
    else :
        while True:
            # print(data , i)
            if data[i-1] > data[i]:
                data.pop(i)
                i = 1
            else:
                i+=1
            if i >= len(data):
                print("TT: " , i, sum(data))
                break
        for k in data:
            print(k, end=" ")
        print()

