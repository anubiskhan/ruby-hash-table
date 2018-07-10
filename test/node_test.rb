require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_it_exists
    node = Node.new('John', 'John'.sum)

    assert_instance_of Node, node
    assert_equal 'John', node.key
    assert_equal 399, node.value
  end
end
