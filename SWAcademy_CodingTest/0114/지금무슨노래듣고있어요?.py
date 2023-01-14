songs = int(input())
playList= []
for i in range(songs):
    playList.append(input())

playListTime = [0]
for i in range(1,songs+1):
    temp = int(input())
    temp2 = playListTime[i-1]
    playListTime.append(temp+temp2)

playListTime.pop(0)

question = int(input())
for i in range(question):
    sec = int(input())
    for j in range(len(playListTime)):
        if sec <= playListTime[j]:
            print(playList[j])
            break
    
