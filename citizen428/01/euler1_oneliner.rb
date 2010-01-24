puts Array.new(1000) { |i| i if i%3 == 0 || i%5 == 0 }.compact!.inject(0) { |sum, x| sum + x }
