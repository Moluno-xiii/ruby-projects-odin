# Fibonacci.

def fibs(number)
  fib_array = [0, 1]
  fib_obj = { 0 => 0, 1 => 1 }
  first_value = fib_array[0]
  second_value = fib_array[1]
  (1..number - 2).each do |num|
    fib_value = first_value + second_value
    fib_array << fib_value
    fib_obj[num + 2] = fib_value
    first_value = second_value
    second_value = fib_value
  end
  { fibonacci_array: fib_array, fibonacci_object: fib_obj }
end

def fibs_rec(number, first_value = 0, second_value = 1, fib_array = [0, 1])
  return { fibonacci_array: fib_array, fibonacci_object: fib_obj } if number <= 2

  fib_value = first_value + second_value
  fib_array << fib_value

  fibs_rec(number - 1, second_value, fib_value, fib_array)
end

# Merge sort.

array = [20, 3, 10, 4, 6, 8, 1, 8, 9, 6, 24]

def merge_sort(array)
  return array if array.length <= 1

  middle_of_array = array.length / 2
  left_half = array.slice(0, middle_of_array)
  right_half = array.slice(middle_of_array, array.length)

  first_half = merge_sort(left_half)
  second_half = merge_sort(right_half)

  merge(first_half, second_half)
end

def merge(first_half, second_half)
  index_a = 0
  index_b = 0
  sorted_array = []

  while index_a < first_half.length && index_b < second_half.length
    if first_half[index_a] <= second_half[index_b]
      sorted_array << first_half[index_a]
      index_a += 1
    else
      sorted_array << second_half[index_b]
      index_b += 1
    end
  end

  sorted_array.concat(first_half[index_a..])
  sorted_array.concat(second_half[index_b..])

  sorted_array
end

puts merge_sort(array)
puts fibs(8)
puts fibs_rec(8)
