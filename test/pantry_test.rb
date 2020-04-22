require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test
  def setup
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  end

  def test_initialization_with_attributes
    assert_instance_of Pantry, @pantry
    assert_equal ({}), @pantry.stock
  end

  def test_stock_check_with_no_stock
    assert_equal 0, @pantry.stock_check(@ingredient1)
  end
end
