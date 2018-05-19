class Cookbook
  attr_accessor :title, :author
  def initialize
    @recipes = []
  end
  def method_missing(m,*args,&block)
    @recipes.public_send(m,*args,&block)
  end
end

class Recipe
  attr_accessor :main_ingredient
  def initialize(main_ingredient)
    @main_ingredient = main_ingredient
  end
end
recipe_for_cake = Recipe.new("flour")
recipe_for_chicken = Recipe.new("chicken")

cb = Cookbook.new
cb << recipe_for_cake
cb << recipe_for_chicken
chicken_dishes = cb.select { |recipe| recipe.main_ingredient == "chicken" }
chicken_dishes.each { |dish| puts dish.main_ingredient }

