from string import ascii_lowercase
 
alpha_list = list(ascii_lowercase)

S = list(input().lower())
answer_list = [0] * len(alpha_list)

for i in S:
    for j in range(len(alpha_list)):
        if i == alpha_list[j]:
            answer_list[j] +=1
    
    
state = False
for i in answer_list:
    if i == 0:
        print("NO")
        state = True
        break
        
if state== False:
    print("YES")
    
        