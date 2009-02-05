def calculate(limit)
  sum = 0

  (1...limit).each { |i| sum += i if i % 3 == 0 || i % 5 == 0 }
  sum
end

puts calculate(1000)
