require 'sinatra'

get '/' do
  'Hello'
end

get '/random_cat' do
  @name = ["Amigo", "Oscar", "Viking"].shuffle.pop
  erb(:index)
end

get '/form' do
  erb :form
end

post '/named_cat' do
  @name = params[:name]
  erb(:index)
end
