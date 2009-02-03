def is_palindrome?(num)
  num = num.to_s
  num == num.reverse
end

largest_palindrome = 0

(100..999).each do |i|
  (100..999).each do |j|
    product = i * j
    largest_palindrome = product if is_palindrome?(product) && product > largest_palindrome
  end
end

puts "Largest palindrome made from two 3-digit numbers: #{largest_palindrome}"

