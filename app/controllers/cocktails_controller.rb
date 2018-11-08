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

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id].to_i)
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :cocktail, :ingredient)
  end
end
