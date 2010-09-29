a, b = 1, 1
count = 2

while a < 10 ** 999
  a, b = a+b, a
  count += 1
end

puts "First term in the Fibonacci sequence > 1000 digits: #{count}."
