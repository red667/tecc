primes = [2,     3,     5,     7,    11,    13,    17,    19,    23,    29,    31,    37,    41,    43,
   47,    53,    59,    61,    67,    71,    73,    79,    83,    89,    97,   101,   103,   107,
  109,   113,   127,   131,   137,   139,   149,   151,   157,   163,   167,   173,   179,   181,
  191,   193,   197,   199,   211,   223,   227,   229,   233,   239,   241,   251,   257,   263,
  269,   271,   277,   281,   283,   293,   307,   311,   313,   317,   331,   337,   347,   3497]

print primes
isprime = False


a = 1
while True:
    a += 1
    number = sum(range(a))
    factors = 1
    print number
    for prime in primes:
        exponent = 1
        run = True
        while run:
            if number%prime == 0:
                isprime = True
                number /= prime
                exponent += 1
            else:
                run = False
        if isprime:
            factors *= exponent
            isprime = False
    if factors >= 500:
        break
