require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class CookBookTest < Minitest::Test
  def setup
    @cookbook = CookBook.new
  end

  def test_initialization_with_attributes
    assert_instance_of CookBook, @cookbook
    assert_equal ([]), @cookbook.recipes
  end
end
