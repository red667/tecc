def fac(n)
  n < 3 ? n : n * fac(n-1)
end

limit = 100

num = fac(limit)
num_array = []
num.to_s.each_byte { |b| num_array.push(b.chr.to_i) } 
sum = num_array.inject(0) { |s, n| s += n }

puts "The sum of the digits of #{limit}! is: #{sum}"
