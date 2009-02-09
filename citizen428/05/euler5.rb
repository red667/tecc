require 'rational'

limit = 20

# finds lowest common multiple
result = (1..limit).inject { |c,n| c.lcm n }

puts "Smallest number divisible by all numbers from 1 to #{limit}: #{result}"
