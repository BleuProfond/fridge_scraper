helpers do
  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end
end

# Homepage (Root path)

get '/' do
  user_id = session[:user_id]
  if user_id
    @user = User.find(user_id)
  else
    user_id = nil
  end
  erb :'home_page'
end

get '/ingredients' do
  @ingredients = Ingredient.all
  erb :'ingredients'
end

get '/recipe/:id' do
  @recipe = Recipe.find(params[:id])
  erb :'/recipe'
end

get '/results' do
  @target_ingredients = params[:ingredient].map {|x| x.to_i }

  @recipes = Recipe.all.select do |r|
    recipe_ingredients = r.ingredients.map do |i|
      i.id
    end
    recipe_ingredients if (recipe_ingredients - @target_ingredients) == []
  end

  erb :'/search_result'
end

#new user
get '/user/new' do 
  @user = User.new
  erb :'/user/new'
end

post '/user' do
  @user = User.create(params)
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'/user/new'
  end
end

# Login
get '/user/login' do
  erb :'/user/login'
end

post '/user/login' do
  email = params[:email]
  password = params[:password]
  @user = User.find_by(email: email, password: password)
  if @user
    session[:error] = nil
    session[:user_id] = @user.id
    redirect '/'
  else
    session[:error] = 'wrong email or pasword'
    session.delete(:user_id)
    redirect '/user/login'
  end
end

get '/user/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/user/add_ingredients' do
  if current_user
    erb :'user/add_ingredients'
  else 
    session[:error] = 'must be logged in to add ingredients'
    redirect '/user/login'
  end
end

post '/user/add_ingredients' do
  @ingredient = Ingredient.new(
    ingredient_name: params[:ingredient_name]
  )
  if @ingredient.save
    redirect '/ingredients'
  else
    erb :'user/add_ingredients'
  end
end

get '/user/add_recipes' do
  if current_user
    @ingredients = Ingredient.all
    erb :'user/add_recipes'
  else 
    session[:error] = 'must be logged in to add recipes'
    redirect '/user/login'
  end
end

post '/user/add_recipes' do
  @recipe = Recipe.new(
    recipe_name: params[:recipe_name],
    url: params[:url]
    )
  ingredients = params[:ingredient]

  ingredients.each do |ingredient_id|
    @recipe.ingredients << Ingredient.find(ingredient_id)
  end


  if @recipe.save
    redirect '/'
  else
    erb :'user/add_recipes'
  end
end

get '/user/bookmarks' do
  @user = current_user
  if @user
    erb :'/user/bookmarks'
  else 
    session[:error] = 'must be logged in to see your bookmarks'
    redirect '/user/login'
  end
end

post '/user/bookmarks/new' do
  @user = current_user
  @user.bookmarks << Bookmark.create(user_id: @user.id, recipe_id: params[:bookmark].to_i)
  redirect '/user/bookmarks'
end
# post '/results' do
#   erb :'search_result'
# end



 # @recipe.ingredients.collection_singular_ids = params[:ingredient].map {|x| x.to_i }