import psyco
psyco.full()

def doMath(number):
    n = number
    count = 1
    while(n != 1):
        if n % 2 == 0:
            n = n/2
        else:
            n = 3*n + 1
        count += 1
    return count


def main(nmax):
    longest = 1
    number = 1
    while number < nmax:
        count = doMath(number)
        if(count > longest):
            longest = count
            result = number
        number += 2
        count = 1
        
    print "Starting number %s produces the longest chain (%s).\n" % (result, longest)
    

main(1000000)