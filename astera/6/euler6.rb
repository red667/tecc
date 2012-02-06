def funct1
    sum1 = 0
    for i in (1..100)
        sum1 += i**2
    end
    return sum1
end

def funct2
    sum2 = (1..100).inject {|sum, i| sum + i}
    return sum2**2
end

diff = (funct1 - funct2).abs
puts diff
