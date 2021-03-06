class MealsController < ApplicationController

  def index
    @meals = Meal.all

    @markers = @meals.geocoded.map do |meal|
      {
        lat: meal.latitude,
        lng: meal.longitude,
        info_window: render_to_string(partial: '/meals/info_window', locals: { meal: meal }),
      }
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update(meal_params)

    redirect_to meal_path(@meal)
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy

    redirect_to meals_path
  end


  private

  def meal_params
    params.require(:meal).permit(:meal_name, :category, :price, :description, :quantity, :photo, :address)
  end

end
