require 'sinatra'

get '/random_cat' do
  @name = ["Amigo", "Oscar", "Viking"].shuffle.pop
  erb(:index)
end

get '/named_cat' do
  @name = params[:name]
  # p params
  erb(:index)
end

# post '/named_cat' do
#   @name = params[:name]
#   p params
#   erb(:index)
# end
