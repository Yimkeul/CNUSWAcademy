T = int(input()) # 테스트케이스
for i in range(T):
    _ = int(input()) #대여소
    data = list(map(int,input().split()))
    using = int(input()) #사용 이력
    for j in range(using):
        start, fin = list(map(int,input().split())) #사용 시작과 끝
        data[start-1] -=1
        data[fin-1] +=1
    for k in data:
        print(k , end = " ") #출력
    print() #줄바꿈



