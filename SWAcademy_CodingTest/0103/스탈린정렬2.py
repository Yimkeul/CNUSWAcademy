import sys

def stalinsort (array):
    answer =[]
    max = array[0]
    if len(array) == 1:
        return print(array[0])
    else:
        for x in array:
            if x>=max:
                answer.append(x)
                max = x
        return printArray(answer)
        
def printArray (array):
    for i in array:
        print(i, end=" ")
    print()
    

TestCase = int(input())
for _ in range(TestCase):
    _ = int(input())
    data = list(map(int, sys.stdin.readline().split()))
    stalinsort(data)

