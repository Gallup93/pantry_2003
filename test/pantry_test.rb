require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'

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

  def test_restock
    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)
    assert_equal 15, @pantry.stock_check(@ingredient1)
  end

  # def test_enough_ingredients_for?
  #   @cookbook = CookBook.new
  #   @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
  #   @recipe1 = Recipe.new("Mac and Cheese")
  #   @recipe1.add_ingredient(@ingredient1, 2)
  #   @recipe1.add_ingredient(@ingredient2, 8)
  #   @cookbook.add_recipe(@recipe1)
  #
  #   assert_equal false, @pantry.enough_ingredients_for?(@recipe1)
  #
  #   @pantry.restock(@ingredient1, 2)
  #   @pantry.restock(@ingredient2, 8)
  #
  #   assert_equal true, @pantry.enough_ingredients_for?(@recipe1)
  # end
end
