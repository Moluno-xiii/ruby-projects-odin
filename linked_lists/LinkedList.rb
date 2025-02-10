class LinkedList
  attr_accessor :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current_node = @head
      current_node = current_node.next_node while current_node.next_node
      current_node.next_node = new_node
    end
    @size += 1
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node

    @size += 1
  end

  def at(index)
    return nil if index <= 0 || index >= size

    counter = 0
    current_node = @head
    while counter <= index
      current_node = current_node.next_node
      counter += 1
    end
    current_node
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

list = LinkedList.new
list.append('dog')
list.append('shoe')
puts list.head.value
