class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new # needed to instantiate the simple_form_for
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    
    if @cocktail.save
      redirect_to cocktail_path(@cocktail.id)
      # redirect_to cocktail_path(@cocktail)
      # redirect_to @cocktail
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
