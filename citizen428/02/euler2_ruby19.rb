fib = Fiber.new do
  f1 = f2 = 1
  loop do
    Fiber.yield f1
    f1, f2 = f2, f1 + f2
  end
end
 
sum = 0
 
while (num = fib.resume) <= 4_000_000
  sum += num if num.even?
end
 
puts "The sum of the Fibonacci numbers smaller than 4000000 is #{sum}."

