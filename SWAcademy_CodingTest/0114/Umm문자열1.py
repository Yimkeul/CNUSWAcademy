# TestCase = int(input())
# for _ in range(TestCase):
#     _ = input()
#     data = list(input())
#     start, finish = list(map(int,input().split(" ")))

    
#     # finish-=1
#     state = True
#     # print()
#     # print("case __" , data , start-1 , finish-1)
#     if len(data) <=2 :
#         state = False

#     else :
#         if data[start-1]  == "U":
#             # print("test : ", data[start-1])
#             for i in range(start,finish):
#                 # print("test : ", data[i])
#                 if data[i] != "m":
#                     state = False
#                     break
#         else:
#             state = False
    
#     if state == True:
#         print("YES")
#     else:
#         print("NO")
    
T = int(input())
for i in range(T):
    N = int(input())
    S = input()
    A, B = map(int,input().split(" "))
    C = S[A-1 : B]

    if(len(C) >= 3 and C.count("U") ==1 and C[0] == "U"):
        print("YES")
    else:
        print("NO")

    
