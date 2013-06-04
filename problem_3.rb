#Problem #3
#Work out the first ten digits of the sum of the following one-hundred 50-digit
#numbers.

filename = ARGV.first
big_numbers = ARGF.readlines

sum = 0
big_numbers.each {|l| sum = sum + l.to_i }
first_ten = sum.to_s.chars[0..9].join
puts "The first ten digits of the sum of the numbers stored in #{filename} are: #{ first_ten}"
