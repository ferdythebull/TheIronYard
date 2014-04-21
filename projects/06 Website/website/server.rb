require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blog'
  )

class Post
  include DataMapper::Resource

  property :id, Serial
  property :blog_title, String
  property :blog_post, String
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @posts = Post.all
	erb :index, layout: :index
end

get '/blogpost' do
  erb :blogpost, layout: :blogpost
end

get '/newpost' do
  erb :newpost, layout: :newpost
end

post '/newpost' do
  @post = Post.create params[:blog]
  
  redirect to('/')
end