def main(n)
    i = 1
    sum = 0
    
    for i in (1...n)
        if i % 3 == 0 or i % 5 == 0
            sum += i
        end
    end
    
    puts sum
end

main(1000)
