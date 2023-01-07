
def printArray (array):
    for i in array:
        print(i, end=" ")
    print()

def thanossort (array):

    if(len(array) == 1 ):
        print(array[0])
    else:
        i = 0
        while i<len(array)-1:
            if array[i] > array[i+1]:
                array[i] //= 2
                i=0
            else:
                i+=1
        printArray(array)

    
TestCase = int(input())
for _ in range(TestCase):
    _ = input()
    data = list(map(int, input().split(" ")))
    if(len(data) == 1):
        print(data[0])
    else:
        thanossort(data)


   

