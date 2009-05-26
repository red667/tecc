def is_pythagorean_triplet?(*args)
  a, b, c = args
  a ** 2 + b ** 2 == c ** 2
end

solution = nil

1.upto(998) do |a|
  1.upto(998) do |b|
    next if (b == a || b + a >= 1000)
    c = 1000 - a - b     
    if is_pythagorean_triplet?(a, b,  c)
      solution = a, b, c
      break
    end
  end
  break if solution
end

puts solution.inject(1) { |prod, x| prod *= x}
