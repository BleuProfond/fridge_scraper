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
  'chicken salad', 
  'spaghetti', 
  'chicken noodle soup', 
  'sandwich', 
  'vegtable dip',
  'toast'
]

recipes.each do |y|
  Recipe.create(recipe_name: y)
end

User.create(email: 'example@example.com', password: '1234')

#chicken salad
 IngredientRecipe.create( recipe_id: 1, ingredient_id: 1)
 IngredientRecipe.create( recipe_id: 1, ingredient_id: 3)
 IngredientRecipe.create( recipe_id: 1, ingredient_id: 6)
 IngredientRecipe.create( recipe_id: 1, ingredient_id: 19)

#toast
 IngredientRecipe.create( recipe_id:6, ingredient_id: 6)
 IngredientRecipe.create( recipe_id:4, ingredient_id: 6)

# vegtable dip
 IngredientRecipe.create( recipe_id:5, ingredient_id: 19)
 IngredientRecipe.create( recipe_id:5, ingredient_id: 7)
 IngredientRecipe.create( recipe_id:5, ingredient_id: 10)

#chicken noodle soup
 IngredientRecipe.create( recipe_id:3, ingredient_id: 3)
 IngredientRecipe.create( recipe_id:3, ingredient_id: 9)
 IngredientRecipe.create( recipe_id:3, ingredient_id: 11)
 IngredientRecipe.create( recipe_id:3, ingredient_id: 20)
 IngredientRecipe.create( recipe_id:6, ingredient_id: 10)
 IngredientRecipe.create( recipe_id:3, ingredient_id: 8)
 IngredientRecipe.create( recipe_id:3, ingredient_id: 7)
 IngredientRecipe.create( recipe_id:3, ingredient_id: 17)
 IngredientRecipe.create( recipe_id:3, ingredient_id: 21)

#spaghetti
 IngredientRecipe.create( recipe_id:2, ingredient_id: 22)
 IngredientRecipe.create( recipe_id:2, ingredient_id: 17)
 IngredientRecipe.create( recipe_id:2, ingredient_id: 11)
 IngredientRecipe.create( recipe_id:2, ingredient_id: 16)
 IngredientRecipe.create( recipe_id:2, ingredient_id: 23)
 IngredientRecipe.create( recipe_id:2, ingredient_id: 24)
 IngredientRecipe.create( recipe_id:2, ingredient_id: 15)
 IngredientRecipe.create( recipe_id:2, ingredient_id: 8)