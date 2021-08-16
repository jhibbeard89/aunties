class MealsController < ApplicationController
 
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meals_params)
    @meal.user = current_user
    if @meal.save
        raise
        redirect_to meals_path(@meal)   
    else
        raise
        render :new
    end
  end


  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy

    redirect_to meals_path
  end

  private

  def meals_params
    params.require(:meal).permit(:meal_name, :category, :price, :description)
  end

end
