require "sinatra"

get '/' do
	erb :index, layout: :index
end

get '/blogpost' do
  erb :blogpost, layout: :blogpost
end

get '/newpost' do
  erb :newpost, layout: :newpost
end