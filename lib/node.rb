class Node
  attr_reader :key, :value
  attr_accessor :next
  def initialize(key, value)
    @key = key
    @value = value
    @next = nil
  end
end
