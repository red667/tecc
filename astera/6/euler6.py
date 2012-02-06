def funct1():
	sum1 = 0
	for i in xrange(1,101):
		sum1 += i**2
	return sum1

def funct2():
	sum2 = sum (xrange(1,101))
	return sum2**2

diff = abs(funct1() - funct2())
print diff