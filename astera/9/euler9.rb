num = 1000

for a in (1..num)
  for b in (a..num)
    if a*a + b*b == (num - a - b)*(num - a - b)
      c = num - a - b
      puts "a = #{a}, b = #{b}, c = #{c} -- result = #{a*b*c}"
    end
  end
end
