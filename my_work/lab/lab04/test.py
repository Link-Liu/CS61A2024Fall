def equals(n):
    for i in range(0, n):
        if n == 4:
            return True
        else:
            return False
a = any(equals(n) for n in range(5))
print(a)