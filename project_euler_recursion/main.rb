# check if number is a multiple of 3 or 5 using modulus
# if it's a multiple, increment and add to the value, else, discard the number
def natural_numbers(number, count = 0)
  i = 0

  while i < number
    count += i if i % 3 == 0 || i % 5 == 0
    i += 1
  end
  count
end

def natural_numbers_recursed(number, count = 0, i = 0)
  return count if i >= number

  count += i if i % 3 == 0 || i % 5 == 0
  natural_numbers_recursed(number, count, i + 1)
end

def fibonacci_recursed(number, first = 0, second = 1)
  return first if number.zero?
  return second if number == 1

  fibonacci_recursed(number - 1, second, first + second)
end

def sum_of_even_fib_values
  number = 0
  accumulator = 0

  while (count = fibonacci_recursed(number)) < 4_000_000
    accumulator += count if count.even?
    number += 1
  end
  accumulator
end

# 3 largest prime factor
def largest_factor(number)
  i = 1
  largest_factor = 1

  while i < Math.sqrt(number).round
    largest_factor = i if (number % i).zero?
    i += 1

    break if largest_factor > 1
  end

  return { largest_factor: number / largest_factor, divisible: largest_factor } if largest_factor > 1

  "#{number} is a prime number"
end

def check_prime(number)
  return false if number <= 1

  i = 2
  while i < Math.sqrt(number).floor + 1
    return false if (number % i).zero?

    i += 1
  end
  true
end

def largest_prime_factor(number)
  i = 1
  largest_prime = 1

  while i < Math.sqrt(number).round
    largest_prime = i if (number % i).zero? && check_prime(i)
    i += 1
  end

  return largest_prime if largest_prime > 1

  "#{number} is a prime number"
end

def largest_prime_recursed(number, i = 1, largest_prime = 2)
  sqrt = Math.sqrt(number).floor

  return largest_prime if i > sqrt

  largest_prime = i if (number % i).zero? && check_prime(i)
  largest_prime_recursed(number, i + 1, largest_prime)
end

# 4 Largest palindrome product from the product of 3 numbers
def largest_palindrome_product
  palindrome_numbers = []
  (100..999).each do |num|
    (100..999).each do |multiple|
      result = num * multiple
      # return
      palindrome_numbers << result if result.to_s.reverse == result.to_s
    end
  end
  palindrome_numbers.max
end

def palindrome?(num)
  num_str = num.to_s
  num_str == num_str.reverse
end

def largest_palindrome_product_recursive(num = 999, multiple = 999, largest_palindrome = 0)
  return largest_palindrome if num < 100

  product = num * multiple
  largest_palindrome = [largest_palindrome, product].max if palindrome?(product)

  if multiple > 100
    largest_palindrome_product_recursive(num, multiple - 1, largest_palindrome)
  else
    largest_palindrome_product_recursive(num - 1, 999, largest_palindrome)
  end
end

# 5 2520  is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
def smallest_multiple(max_num)
  range = (1..max_num).to_a
  num = max_num

  loop do
    num += 1
    return num if range.all? { |multiplier| (num % multiplier).zero? }
  end
end
#
# puts largest_prime_factor(100_000_000_019)
puts largest_prime_factor(600_851_475_143)
# puts check_prime(100_000_000_019)
