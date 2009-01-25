def main(n)
    factors = []

    for i in (2..n)
        if n % i == 0
            factors.push(i)
            n = n / i
        end

        if n == 1
            puts factors.last
            break
        end
    end
end

main(600851475143)
