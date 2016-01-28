ingredients = [
  'lettuce', 
  'cheese', 
  # 'chicken', 
  # 'milk', 
  # 'cooking oil', 
  # 'bread',
  # 'carrot', 
  # 'pasta', 
  # 'chicken broth', 
  # 'celery', 
  # 'onion', 
  # 'garlic',
  # 'herbs', 
  # 'egg', 
  # 'beef', 
  # 'tomato', 
  # 'spices', 
  # 'pork', 
  # 'salad dressing'
]

ingredients.each do |x|
  Ingredient.create(iname: x)
end

# recipes = [
#   'greek salad', 
#   'spaghetti', 
#   'chicken noodle soup', 
#   'sandwich', 
#   'vegtable dip'
# ]

# recipes.each do |y|
#   Recipe.create(recipe_name: y)
# end