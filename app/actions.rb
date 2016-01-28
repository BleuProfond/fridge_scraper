# Homepage (Root path)
get '/' do
  erb :'home_page'
end

get '/ingredients' do
  erb :'ingredients'
end

get '/results' do
  @target_ingredients = params[:ingredient].map {|x| x.to_i }

  @recipes = Recipe.all.select do |r|
    recipe_ingredients = r.ingredients.map do |i|
      i.id
    end
    recipe_ingredients if (recipe_ingredients - @target_ingredients) == []
  end

  erb :'search_result'
end

# post '/results' do
#   erb :'search_result'
# end



 # @recipe.ingredients.collection_singular_ids = params[:ingredient].map {|x| x.to_i }