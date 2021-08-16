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
    @meal.save

    redirect_to meal_path(@meal)
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
