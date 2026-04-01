a, b = map(int, input().split())
c = int(input())

if (b + c) > 59:   
    d = (b + c) // 60
    b = (b + c) - (60 * d)
    if a + d > 23:
        a = (a + d) - 24
    else:
        a = a + d
else:
    b = b + c

print(a,b)