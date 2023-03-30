N = int(input())

ball = [1,2,3]
if N == 1:
    for i in ball:
        print(i, end= " ")
else:
    for i in range(N-1):
        left = ball[0]
        temp = ball[1:3]
        ball = temp
        ball.append(left)
    for i in ball:
        print(i, end = " ")
    