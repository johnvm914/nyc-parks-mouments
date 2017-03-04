class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render "index.html.erb"
  end
  
end
