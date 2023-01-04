data = list(input())
cnt =0
for i in data:
    if(i == "#"):
        cnt +=1

if cnt >1 :
    print("HELP!")
else:
    print("HAHA!")