require 'prime'

puts Prime.each(2_000_000).inject(0) { |sum, prime| sum += prime }