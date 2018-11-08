class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i[show]
  def index
    @cocktails = Cocktail.all
  end

  def show
    # show specific cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id].to_i)
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
