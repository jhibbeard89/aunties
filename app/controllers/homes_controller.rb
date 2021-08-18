class HomesController < ApplicationController
  def index
    @meals = Meal.all
  end
end
