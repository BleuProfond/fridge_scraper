# Homepage (Root path)
get '/' do
  erb :'home_page'
end

get '/ingredients' do
  erb :'ingredients'
end

get '/bookmarks' do
  erb :'bookmarks'
end

get '/recipe/:id' do
  @recipe = Recipe.find(params[:id])
  erb :'recipe'
end

