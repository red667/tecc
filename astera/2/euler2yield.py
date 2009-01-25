def fibSequ():
    a, b = 1, 2
    while 1:
        yield b
        a, b = b, a + b

def main(n):
    sum = 0
    
    for i in fibSequ():
        if i % 2 == 0:
            sum += i
        if i >= n:
            print sum
            break

main(4000000)