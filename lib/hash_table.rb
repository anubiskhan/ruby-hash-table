class HashTable
  attr_reader :length, :array
  def initialize
    @length = 10
    @array = Array.new(10)
  end

  def put(key, value)
    return false if get(key)
    position = value % length
    if !array[position]
      array[position] = LinkedList.new
      array[position].append(key, value)
    else
      array[position].append(key, value)
    end
  end

  def get(key)
    position = key.sum % 10
    return false if !array[position]

    node = array[position].head
    until node.key == key
      if node.next == nil
        return false
      end
      node = node.next
    end
    return node.value
  end

  def print_hash_table
    p(array.each_with_index.map do | element, index |
      if element.nil?
        "#{index}->\n"
      else
        "#{index}->#{element.key_list}\n"
      end
    end.join)
  end
end
