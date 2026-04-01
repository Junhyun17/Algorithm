a, b = map(int, input().split())
if b >= 45:
    print(a, b-45)
else:
    if a == 0:
        a = 23
    else:
        a = a - 1
    print(a, 60 - (45-b))
