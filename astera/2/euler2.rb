n = 4000000

a = 1
b = 2
fibSequ = [1, 2]
sum = 0

while (b + a) <= n do
    a = b + a
    fibSequ.push(a)
    
    if (a + b) <= n
        b = a + b
        fibSequ.push(b)
    end
end
puts fibSequ

fibSequ.each do |i|
    if i % 2 == 0
        sum = sum + i
    end
end

puts "Sum = #{sum}"