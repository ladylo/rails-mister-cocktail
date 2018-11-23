class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(create_params)
    @cocktail.save
    redirect_to cocktails_path
  end

    private
  def create_params
    params.require(:cocktail).permit(:name)
  end
end
