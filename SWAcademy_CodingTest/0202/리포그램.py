from string import ascii_lowercase
 
alpha_list = list(ascii_lowercase)

S = list(input().lower())
answer_list = [0] * len(alpha_list)

for i in S:
    for j in range(len(alpha_list)):
        if i == alpha_list[j]:
            answer_list[j] +=1
    


if 0 in answer_list:
    state = True
else:
    state = False


if state== True:
    print("YES")
    ans = ""
    for i in range(len(answer_list)):
        if answer_list[i] == 0 :
            ans += alpha_list[i]
    print(ans)
else:
    print("NO")
  

