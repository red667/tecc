# This is dog-slow in 1.8.6 but quite acceptable in 1.9.1

def number_of_terms(n)
  num_of_terms = 1

  until n == 1 do
    n = n % 2 == 0 ? n / 2 : n * 3 + 1
    num_of_terms += 1
  end

  num_of_terms
end

limit = 1_000_000
most_terms = 0
starting_number = 0

(1...limit).each do |i|
  x = number_of_terms(i)
  if x > most_terms
    most_terms = x
    starting_number = i
  end
end

puts "The sequence starting from #{starting_number} has #{most_terms}."

