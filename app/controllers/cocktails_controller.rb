class CocktailsController < ApplicationController
  before_action :find_cocktail, only: %i[show]
  def index
    if params[:name]
      @cocktails = Cocktail.where("name LIKE '%#{params[:name]}%'")
    else
      @cocktails = Cocktail.all
    end
  end

  def show
    @dose = Dose.new
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
    params.require(:cocktail).permit(:name, :photo)
  end
end
