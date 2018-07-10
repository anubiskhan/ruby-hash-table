class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(key, value)
    if @head
      find_tail.next = Node.new(key, value)
    else
      @head = Node.new(key, value)
    end
  end

  def find_tail
   node = @head

   return node if !node.next
   return node if !node.next while (node = node.next)
  end

  def key_list
    list = ''
    return list if @head.nil?
    node = @head
    list << node.key
    while node.next
      node = node.next
      list << node.key
    end
    list
  end
end
