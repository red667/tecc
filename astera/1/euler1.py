def main(n):
    i = 1
    sum = 0
    
    for i in xrange (1, n):
        if (i % 3 == 0) or (i % 5 == 0):
            sum += i
    print sum

main(1000)