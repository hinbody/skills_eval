#Problem #1
#n! means n (n 1) ... 3 2 1
#For example, 10! = 10 9 ... 3 2 1 = 3628800, and the sum of the digits
#in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#Find the sum of the digits in the number 100!

#calculate factorial of numb
def factorial(numb)
  result = starting = numb
  while starting > 1 do
    result *= starting - 1
    starting -= 1
  end
  result
end

#calculates sum of all the digits of result
def sum_result(result)
  string_result = result.to_s
  sum = 0
  string_result.each_char do |c|
    sum = sum + c.to_i
  end
  sum
end

total = factorial(100)
total_sum = sum_result(total)
puts "The sum of the digits in the number 100! is: #{total_sum}"
