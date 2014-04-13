require "sinatra"

get '/' do
	erb :index, layout: :index
end