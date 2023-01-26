_ = int(input())

data = list(map(int, input().split(" ")))

left = data[0]
right = data[len(data)-1]

canLeft = []
canRight = []

canSee = 0
for i in range( len(data)):
    if data[i] >= canSee:
        canSee = data[i]
        canLeft.append(data[i])

canSee = 0
for i in range(len(data)-1, -1, -1) :
    if data[i] >= canSee:
        canSee = data[i]
        canRight.append(data[i])

print(len(set(canLeft)) , len(set(canRight)))

