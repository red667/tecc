require 'mathn'

a = Array.new

Prime.each(120000) do |prime|
  a << prime
end

puts "The 10,001st prime number is #{a[10000]}."
