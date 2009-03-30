def find_even_fibonacci_numbers(max)
  a, b = 0, 1
  fib_array = []

  until b >= max
    fib_array.push(b) if b % 2 == 0
    a,b = b,a+b
  end
  fib_array
end

limit = 4_000_000

numbers_to_sum = find_even_fibonacci_numbers(limit)
sum = numbers_to_sum.inject(0) { |s,v| s += v }
  
puts "Sum of the #{numbers_to_sum.length} even Fibonacci numbers <= #{limit}: #{sum}"
