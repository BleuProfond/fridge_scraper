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
  erb :'ingredients'
end

get '/users/bookmarks' do
  erb :'/users/bookmarks'
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

get '/user/new' do 
  @user = User.new
  erb :'/user/new'
end

post '/users' do
  @user = User.create(params)
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :'/users/new'
  end
end

get '/users/logout' do
  session[:user_id] = nil
  redirect '/'
end
# post '/results' do
#   erb :'search_result'
# end



 # @recipe.ingredients.collection_singular_ids = params[:ingredient].map {|x| x.to_i }