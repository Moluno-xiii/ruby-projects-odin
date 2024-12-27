module Enumerable
  def log_info
    puts self
  end
  
  def my_all?
    self.each do |element|
      if !block_given?
        return false unless element
      else
        return false unless yield(element)
      end
    end
    true
  end

  def my_any?
    self.each do |element|
      if block_given?
        return true if yield(element)
      else
        return true if element
      end
    end
    false
  end
  
  def my_each

  end
end


# Any
# if self has no element, returns false
# without block or argument given, returns true if self has any truthy element
# whth block giben and no argument, return strue if block returns any truthy value

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each 
    self.each do |element|
      
    end
  end
end


test_array = (1..20).to_a
test_array.log_info