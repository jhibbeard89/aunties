class OrdersController < ApplicationController
  before_action :set_meal, only: [:create]

  def new
    @order = Order.new
  end

  def create 
    @order = Order.new(order_params)
    @order.meal_id = @meal.id
    @order.user_id = current_user.id

    if @order.quantity > @meal.quantity
      @error = "Your order exceeds the available order amount" 
      # redirect_to meal_path(@meal)
      # params[:order][:meal_id]
      render :new
    elsif @order.save!
      redirect_to order_path(@order) 
    end 
    # end

    if @order.save!
      new_quantity = @meal.quantity.to_i - @order.quantity.to_i
      @meal.update(quantity: new_quantity)
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
