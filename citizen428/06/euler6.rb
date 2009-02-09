def sum_of_squares(limit)
  sum = 0
  (1..limit).each { |num| sum += num ** 2 }
  sum
end

def square_of_sum(limit)
  sum = 0
  (1..limit).each { |num| sum += num }
  sum ** 2
end

limit = 100

puts "Differences between the sum of squares and the square of sums of the first #{limit} natural number is: #{square_of_sum(limit) - sum_of_squares(limit)}"

