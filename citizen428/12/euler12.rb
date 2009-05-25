=begin
  Only try to find factors up to the square root of the number.
  We double count at the end, because every time max % num == 0, 
  num and max / num are factors. Yes, this is a little imprecise
  when we hit a square, but only affects numbers which would have 
  an uneven amount of factors. Since the check is for > 500, we are 
  fine. Not pretty, but much faster. 
=end 
def number_of_factors(max)
  count = 0
  
  (1..Math.sqrt(max)).each { |num| count +=1 if max % num == 0 }
  count * 2
end

num = 1
sum = 0

num += 1 until (number_of_factors(sum += num) > 500) 

puts "First triangle number with more than 500 factors: %d" % sum
