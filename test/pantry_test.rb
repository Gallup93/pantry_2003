require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test
  def setup
    @pantry = Pantry.new
  end

  def test_initialization_with_attributes
    assert_instance_of Pantry, @pantry
  end
end
