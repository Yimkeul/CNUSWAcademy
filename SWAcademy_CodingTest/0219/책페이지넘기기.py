page = list(input())
N = int(input())

leftStack = []
rightStack = []

leftStack.append(page.pop(0))

for i in range(len(page)-1,-1,-1):
    rightStack.append(page[i])

def isFin(stack):
    if len(stack) == 1:
        return True
    else:
        return False

for i in range(N):
    data = list(input().split(" "))
    control = data[0]
    direction = data[1]

    if control == "move":
        if direction == "left":
            if isFin(leftStack) == False:
                pop = leftStack.pop(-1)
                rightStack.append(pop)
                
        #right
        else:
            if isFin(rightStack) == False:
                pop = rightStack.pop(-1)
                leftStack.append(pop)
                
    #tear
    else:
        if direction == "left":
            if isFin(leftStack) == False:
                leftStack.pop(-1)
                
        #right
        else:
            if isFin(rightStack) == False:
                rightStack.pop(-1)
 
print(leftStack[len(leftStack)-1] , rightStack[len(rightStack)-1])