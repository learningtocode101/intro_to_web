require 'sinatra'

get '/cat' do
  @random_name = ["Amigo", "Oscar", "Viking"].shuffle.pop
  erb(:index)
end
