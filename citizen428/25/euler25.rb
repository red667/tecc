a, b = 1, 1
count = 2

until a.to_s.length >= 1000
  a, b = a+b, a
  count += 1
end

puts "First term in the Fibonacci sequence > 1000 digits: #{count}."