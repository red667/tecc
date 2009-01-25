numbers = open('euler8numbers.txt').read.gsub(/\n/, '')

def main(numbers)
    length = numbers.length

    product = 0
    largest = 0

    for i in (0...(length - 5))
        fiveVals = numbers[i...(i + 5)]
        product = fiveVals.split('').inject(1) {|x, y| x*y.to_i}
                
        if product > largest
            largest = product
        end
    end
    puts largest
end

main(numbers)
