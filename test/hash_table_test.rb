require 'minitest/autorun'
require 'minitest/pride'
require './lib/hash_table.rb'
require './lib/linked_list.rb'
require './lib/node.rb'

class HashTableTest < Minitest::Test
  def test_it_exists
    hash_table = HashTable.new

    assert_instance_of HashTable, hash_table
    assert_equal 10, hash_table.length
  end

  def test_put_key_value
    hash_table = HashTable.new
    hash_table.put('John', 'John'.sum)

    assert_equal 'John', hash_table.array[9].head.key
    assert_equal 399, hash_table.array[9].head.value
  end

  def test_get_value_by_key
    hash_table = HashTable.new
    hash_table.put('John', 'John'.sum)

    get_it = hash_table.get('John')

    assert_equal 399, get_it
  end

  def test_print_returns_table
    hash_table = HashTable.new
    hash_table.put('John', 'John'.sum)

    output = hash_table.print_hash_table

    assert output.include?('0 ->')
    assert output.include?('9 -> John')
  end
end
