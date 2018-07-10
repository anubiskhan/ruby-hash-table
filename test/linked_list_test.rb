require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list.rb'
require './lib/node.rb'

class LinkedListTest < Minitest::Test
  def test_it_exists
    linked_list = LinkedList.new

    assert_instance_of LinkedList, linked_list
    refute linked_list.head
  end

  def test_append
    linked_list = LinkedList.new

    linked_list.append('John', 'John'.sum)
    assert_instance_of Node, linked_list.head
    assert_equal 'John', linked_list.head.key

    linked_list.append('Bill', 'Bill'.sum)
    assert_equal 'John', linked_list.head.key
    assert_equal 'Bill', linked_list.head.next.key
  end

  def test_find_tail
    linked_list = LinkedList.new

    linked_list.append('John', 'John'.sum)
    linked_list.append('Bill', 'Bill'.sum)

    assert_equal 'Bill', linked_list.find_tail.key
  end
end
