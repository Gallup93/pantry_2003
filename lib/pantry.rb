class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  # def enough_ingredients_for?(recipe)
  #   enough = true
  #   count = 0
  #   while enough == true && count < recipe.ingredients_required.length
  #     recipe.ingredients_required.each do |key, value|
  #       enough = false if value < stock_check(key)
  #     end
  #     count += 1
  #   end
  #   enough
  # end
end
