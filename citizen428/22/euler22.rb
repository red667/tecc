def generate_name_score(name, index)
  name_score = 0
  name.each_byte { |c| name_score += c - 64 }
  name_score *= index
end

names = File.open('./names.txt').read.gsub('"','').split(',').sort
sum = 0

names.each_with_index { |name, index| sum += generate_name_score(name, index+1) }

puts "The sum of all name scores is: #{sum}"

