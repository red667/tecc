class Fixnum
  def is_palindrome?
    num = self.to_s
    num == num.reverse
  end
end

products = []

100.upto(999) do |i| 
  100.upto(999) do |j| 
    products << i*j
  end
end

puts "Largest palindrome made from two 3-digit numbers: #{products.select(&:is_palindrome?).sort.last}"

