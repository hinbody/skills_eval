#Problem #2
#If we list all the natural numbers below 10 that are multiples of 3 or 5, 
#we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

multiples = (1...1000).select {|x| x%3 == 0 || x%5 == 0}

multiples_sum = 0
multiples.each {|x| multiples_sum += x}

puts "The sum of the natural numbers less than 1000 that are multiples of 3 or 5 is: #{multiples_sum}"
