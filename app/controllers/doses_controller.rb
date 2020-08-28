class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find params[:cocktail_id]
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    @cocktail = Cocktail.find params[:cocktail_id]

    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail.id)
      # redirect_to cocktail_path(@cocktail)
      # redirect_to @cocktail
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktail_path(@dose.cocktail.id)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
