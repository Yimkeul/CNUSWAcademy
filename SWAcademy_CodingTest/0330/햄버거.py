a, b = list(map(int, input().split(' ')))

cnt = 0
while True:
    a -= 2
    b -= 1
    if a <0 or b <0:
        break; 
    cnt +=1
    
    
print(cnt)
    