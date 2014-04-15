class HomeController < ApplicationController

def index
  @all_posts = Post.all
end

end