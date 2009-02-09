num = 2 ** 1000

num_array = []
num.to_s.each_byte { |b| num_array.push(b.chr.to_i) } 
sum = num_array.inject(0) { |s, n| s += n }

puts "Sum of the digits of 2**1000: #{sum}"

