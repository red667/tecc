puts (1..1000).inject(0) { |sum, n| sum += n ** n}.to_s[-10..-1]
