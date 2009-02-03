def factorize(max)
  factors = []

  (2..max).each do |num|
    if max % num == 0
      factors.push(num)
      max = max / num
    end
    break if max == 1
  end
  factors
end

limit = 600_851_475_143

factors = factorize(limit)
puts factors.last
