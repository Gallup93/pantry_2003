class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    all_ingredients = []
    @recipes.each do |recipe|
      recipe.ingredients_required.each {|key, value| all_ingredients << key.name}
    end
    all_ingredients.uniq
  end

  def highest_calorie_meal
    highest_calories = 0
    result = nil
    @recipes.each do |recipe|
      calories = recipe.total_calories
      if calories > highest_calories
        highest_calories = calories
        result = recipe
      end
    end
    result
  end
end
