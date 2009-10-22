# Ruby 1.9 only

s, a = '0', '0'
s << a.next! until s.length > 1_000_000
puts [s[1], s[10], s[100], s[1000], s[10000], s[100000], s[1000000]].map(&:to_i).inject(&:*)
