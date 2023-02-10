N = int(input())
S = list(input())

result = 2
for i in range(1,N-1):
    left = (list(set(S[:i])))
    right = (list(set(S[i:])))
    result = max(result, len(left) + len(right))
print(result)
