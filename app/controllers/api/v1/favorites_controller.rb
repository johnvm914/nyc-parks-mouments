class Api::V1::FavoritesController < ApplicationController

  def create
    @favorite = Favorite.create(borough: params[:borough], name: params[:name], descrip: params[:descrip], location: params[:location])
    render "show.json.jbuilder"
  end

end
