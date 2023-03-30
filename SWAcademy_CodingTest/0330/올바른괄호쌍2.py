data = list(input())

stack = []
# state = "YES"
for i in data :
    if i == "(" or i == "{" or i == "[":
        stack.append(i)
    elif i == ")" :
        stack.append(i)
        if stack[len(stack)-2] == "(":
            stack.pop()
            stack.pop()
    elif i == "}" :
        stack.append(i)
        if stack[len(stack)-2] == "{":
            stack.pop()
            stack.pop()
    elif i == "]" :
        stack.append(i)
        if stack[len(stack)-2] == "[":
            stack.pop()
            stack.pop()
        
if len(stack) > 0:
    print("NO")
else:
    print("YES")

    
            
            
    
    
    
    