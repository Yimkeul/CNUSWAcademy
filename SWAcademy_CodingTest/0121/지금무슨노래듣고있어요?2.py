songs = int(input())
# 노래 목록
playList = []
for _ in range(songs):
    playList.append(input())
# 노래별 시간 목록
playListTime = []
for _ in range(songs):
    playListTime.append(int(input()))

for i in range(1, songs):
    playListTime[i] += playListTime[i-1]


question = int(input())
#질문했을때 시간 목록
timeList = []
for _ in range(question):
    timeList.append(int(input()))

max_ = max(playListTime)

# 질문했을때 시간 목록이 처음으로 반복하는 경우
for i in range(len(timeList)):
    if timeList[i] > max_:
        while timeList[i] > max_:
            timeList[i] -= max_


for i in timeList:
    for j in range(len(playListTime)):
        if i <= playListTime[j] :
            print(playList[j])
            break






