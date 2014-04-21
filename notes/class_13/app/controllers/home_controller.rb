class HomeController < ApplicationController

  def index
    @dvds = Dvd.all

  end
end
