# dx = [1, 0, -1 , 0]
# dy = [0 , -1 , 0, 1]
# #     R   U   L  D

# def findStart (array , row):

#     for i in range(row):
#         if array[i].count("@") == 1:
#             return(i,array[i].index("@"))
            

#         # for j in range(col):
#             # if array[j][i] == "@":
#                 # return(j,i)

# # Col = j , Row = i

# def move (controlArray , startCol, startRow , mapN, mapM, isMap):
#     tempx = startCol
#     tempy = startRow
#     for i in range(len(controlArray)):
#         if controlArray[i] == "R":
#             nx = dy[0] + tempx
#             ny = dx[0] + tempy
#             # print(f"before ({tempy},{tempx}) | R | after({ny},{nx})")
#             if (nx>=0 and nx < mapN ) and (ny >= 0 and ny <=mapM) and isMap[ny][nx] != "#":
#                 tempx = nx
#                 tempy = ny
#         elif controlArray[i] == "U":
#             nx = dy[1] + tempx
#             ny = dx[1] + tempy
#             # print(f"before ({tempy},{tempx}) | R | after({ny},{nx})")
#             if (nx>=0 and nx <= mapN ) and (ny >= 0 and ny <=mapM) and isMap[ny][nx] != "#":
#                 tempx = nx
#                 tempy = ny
#         elif controlArray[i] == "L":
#             nx = dy[2] + tempx
#             ny = dx[2] + tempy
#             # print(f"before ({tempy},{tempx}) | R | after({ny},{nx})")
#             if (nx>=0 and nx <= mapN ) and (ny >= 0 and ny <=mapM) and isMap[ny][nx] != "#":
#                 tempx = nx
#                 tempy = ny
#         elif controlArray[i] == "D":
#             nx = dy[3] + tempx
#             ny = dx[3] + tempy
#             # print(f"before ({tempy},{tempx}) | R | after({ny},{nx})")
#             if (nx>=0 and nx <= mapN ) and (ny >= 0 and ny <=mapM) and isMap[ny][nx] != "#":
#                 tempx = nx
#                 tempy = ny
#     print(tempy+1, tempx+1)

# T = int(input())
# for _ in range(T):
#     N , M = list(map(int,input().split(" ")))
#     isMap =[list(map(str, input().rstrip())) for _ in range(N)]

#     startCol,startRow =  findStart(isMap, N)
#     # print(startCol, startRow)
#     #입력개수
#     _ = input() 
#     #컨트롤
#     control=  list(input())
#     move(control, startCol, startRow , N , M, isMap)



    

testCase = int(input())

for _ in range(testCase):
    row, col = map(int, input().split(' '))
    graph = [list(map(str, input().rstrip())) for _ in range(row)]
    move = int(input())
    moving = input()

    umX = 0  # Col
    umY = 0  # Row
    for i in range(row):
        if graph[i].count("@") == 1:
            umY = i
            umX = graph[i].index("@")
            break
    
    for index in moving:
        if index == "U":
            if umY > 0 and graph[umY -1][umX] != "#":
                umY -= 1
        elif index == "D":
            if umY < row - 1 and graph[umY + 1][umX] != "#":
                umY += 1
        elif index == "L":
            if umX > 0 and graph[umY][umX - 1] != "#":
                umX -= 1
        elif index == "R":
            if umX < col - 1 and graph[umY][umX + 1] != "#":
                umX += 1
    print(umY + 1, umX + 1)