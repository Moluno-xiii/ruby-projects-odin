module Enumerable
  def log_info
    puts self
  end

  def my_all?
    each do |element|
      if !block_given?
        return false unless element
      else
        return false unless yield(element)
      end
    end
    true
  end

  def my_any?
    each do |element|
      if block_given?
        return true if yield(element)
      elsif element
        return true
      end
    end
    false
  end

  def my_count
    count = 0
    each do |element|
      if block_given?
        count += 1 if yield(element)
      else
        element ? count += 1 : 0
      end
    end
    count
  end

  def my_each
    # return to_enum(:my_each) unless block_given?
    for element in self
      yield(element)
    end
    self
  end

  def my_each_with_index
    index = 0
    each do |element|
      # for element in self
      yield(element, index)
      index += 1
    end
    self
  end

  def my_inject(initial_value = 0)
    accumulator = initial_value
    each do |element|
      accumulator = yield(accumulator, element)
    end
    accumulator
  end

  def my_map
    array = []
    each do |element|
      array << yield(element)
    end
    array
  end

  def my_none?
    each do |element|
      return false if yield(element)
    end
    true
  end

  def my_select
    array = []
    each do |element|
      yield(element) ? array << element : ''
    end
    array
  end
end

test_array = (1..20).to_a
# test_array.log_info
# test_array.each_with_index do |element, index|
#   puts "#{element} has an index of #{index}"
# end
# puts "new line new line \n"
# test_array.my_each_with_index do |element, index|
#   puts "#{element} has an index of #{index}"
# end
# class Array
#   # Define my_each here
#   def my_each
#     each do |element|
#     end
#   end
# end
