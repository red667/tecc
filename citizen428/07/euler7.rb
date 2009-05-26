require 'prime'

count = solution = 0

Prime.each do |prime|
  count += 1
  (solution = prime; break) if count == 10001
end

puts solution