
def printArray (array):
    for i in array:
        print(i, end=" ")
    print()


#역순
def thanossort (array):
    i = len(array)-1
    while i>0:
        if array[i-1] > array[i]:
            array[i-1] //=2
            i+=1
        i-=1
    printArray(array)

    
TestCase = int(input())
for _ in range(TestCase):
    _ = input()
    data = list(map(int, input().split(" ")))
    if(len(data) == 1):
        print(data[0])
    else:
        thanossort(data)


   

