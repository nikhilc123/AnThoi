class OrdersController < ApplicationController
  def new
    #finding the fooditem inside Orders controller and not FoodItems controller
    #Uses food_item_id instead of id
    @item = FoodItem.find(params[:food_item_id])
    #a single item has many orders (has_many :orders)
    @order = @item.orders.build
  end

  def create
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build(order_params)

    #if you do not save the order, will raise id not found error
    if @order.save
      flash[:notice] = "Thank you for your order!"
      redirect_to sections_path
     else
      render 'new'
    end
  end

  private
    def order_params
      params.require(:order).permit(:quantity)
    end
end
