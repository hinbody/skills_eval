def fibonacci(number, p0 = 0, p1 = 1)
  return 0 if number == 0
  return p1 if number == 1
  fibonacci(number - 1, p1, p0 + p1)
end

def digits(number)
  number.to_s.split('').size
end

#returns the first term to contain 'digits' number of digits
def fibonacci_number_of_digits(digits)
  number = 1
  until digits(fibonacci(number)) == digits
    number = number + 1
  end
  number
end

puts "The first term in the Fibonacci sequence to contain 1000 digits is:"
puts "F#{fibonacci_number_of_digits(1000)}"
