num = 1000

for a in xrange(1, num):
    b = ((num*a - ((num**2)/2))/(a - num))
    c = num - a - b

    if ((a**2 + b**2) == c**2) and a < b:
        result = a * b * c
        print result
