def sum_of_squares(limit)
  (1..limit).inject(0) { |sum, num| sum += num ** 2 }
end

def square_of_sum(limit)
  ((1..limit).inject(0) { |sum, num| sum += num }) ** 2
end

limit = 100

puts "Sum of squares - square of for 1 to #{limit}: #{square_of_sum(limit) - sum_of_squares(limit)}"

