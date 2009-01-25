def arreyize(number)
    arr = number.to_s
    return arr == arr.reverse
end

def main
    results = []
    
    for i in (100..999)
        for j in (100..999)
            product = i * j
            if arreyize(product)
                results.push(product)
            end
        end
    end

    puts results.sort.last
end

main