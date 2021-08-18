class OrdersController < ApplicationController
  before_action :set_meal, only: [:create]

  def new
    @order = Order.new
  end

  def create 
    @order = Order.new(order_params)
    @order.meal_id = @meal.id
    @order.user_id = current_user.id
    if @order.save! 
        redirect_to order_path(@order)
    # flash[:notice] = @order.errors.full_messages.to_sentence unless @order.save
    # redirect_to order_path(@order)
    end
  end

  def show
    @order = Order.find(params[:id])
    @meal = Meal.find(@order.meal_id)
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end

  def set_meal
    @meal = Meal.find(params[:order][:meal_id])
  end

end
