ingredients = [
  'lettuce', 
  'cheese', 
  'chicken', 
  'milk', 
  'cooking oil', 
  'bread',
  'carrot', 
  'pasta', 
  'chicken broth', 
  'celery', 
  'onion', 
  'garlic',
  'herbs', 
  'egg', 
  'beef', 
  'tomato', 
  'spices', 
  'pork', 
  'salad dressing',
  'butter',
  'vegtable broth',
  'sugar',
  'tomato paste',
  'mushroom'
]

ingredients.each do |x|
  Ingredient.create(ingredient_name: x)
end

recipes = [
  ['chicken salad', nil],
  ['spaghetti', 'http://allrecipes.com/recipe/11715/easy-spaghetti-with-tomato-sauce/'],
  ['chicken noodle soup', 'http://allrecipes.com/recipe/26460/quick-and-easy-chicken-noodle-soup/'],
  ['sandwich', nil],  
  ['vegtable dip', nil],
  ['toast', nil]
]

recipes.each do |recipe_object|
  Recipe.create(recipe_name: recipe_object[0], url: recipe_object[1])
end

User.create(email: 'example@example.com', password: '1234')

#chicken salad
@recipe = Recipe.find(1)
@recipe.ingredients = [
  Ingredient.find(1), 
  Ingredient.find(3), 
  Ingredient.find(6), 
  Ingredient.find(19)
]

 # IngredientRecipe.create( recipe_id: 1, ingredient_id: 1)
 # IngredientRecipe.create( recipe_id: 1, ingredient_id: 3)
 # IngredientRecipe.create( recipe_id: 1, ingredient_id: 6)
 # IngredientRecipe.create( recipe_id: 1, ingredient_id: 19)

#toast
@recipe = Recipe.find(4)
@recipe.ingredients = [ Ingredient.find(6)]
@recipe = Recipe.find(6)
@recipe.ingredients = [ Ingredient.find(6)]

#  IngredientRecipe.create( recipe_id:6, ingredient_id: 6)
#  IngredientRecipe.create( recipe_id:4, ingredient_id: 6)

# # vegtable dip
@recipe = Recipe.find(5)
@recipe.ingredients = [
  Ingredient.find(19), 
  Ingredient.find(7), 
  Ingredient.find(10)
]

#  IngredientRecipe.create( recipe_id:5, ingredient_id: 19)
#  IngredientRecipe.create( recipe_id:5, ingredient_id: 7)
#  IngredientRecipe.create( recipe_id:5, ingredient_id: 10)

# #chicken noodle soup
# # http://allrecipes.com/recipe/26460/quick-and-easy-chicken-noodle-soup/
@recipe = Recipe.find(3)
@recipe.ingredients = [
  Ingredient.find(9), 
  Ingredient.find(3), 
  Ingredient.find(11), 
  Ingredient.find(20), 
  Ingredient.find(10), 
  Ingredient.find(8), 
  Ingredient.find(7), 
  Ingredient.find(17), 
  Ingredient.find(21)
]

#  IngredientRecipe.create( recipe_id:3, ingredient_id: 3)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 9)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 11)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 20)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 10)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 8)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 7)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 17)
#  IngredientRecipe.create( recipe_id:3, ingredient_id: 21)

# #spaghetti
# # http://allrecipes.com/recipe/11715/easy-spaghetti-with-tomato-sauce/
@recipe = Recipe.find(2)
@recipe.ingredients = [Ingredient.find(22), 
  Ingredient.find(17), 
  Ingredient.find(11), 
  Ingredient.find(16), 
  Ingredient.find(23), 
  Ingredient.find(24), 
  Ingredient.find(15), 
  Ingredient.find(8)
]

#  IngredientRecipe.create( recipe_id:2, ingredient_id: 22)
#  IngredientRecipe.create( recipe_id:2, ingredient_id: 17)
#  IngredientRecipe.create( recipe_id:2, ingredient_id: 11)
#  IngredientRecipe.create( recipe_id:2, ingredient_id: 16)
#  IngredientRecipe.create( recipe_id:2, ingredient_id: 23)
#  IngredientRecipe.create( recipe_id:2, ingredient_id: 24)
#  IngredientRecipe.create( recipe_id:2, ingredient_id: 15)
#  IngredientRecipe.create( recipe_id:2, ingredient_id: 8)