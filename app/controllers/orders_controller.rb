class OrdersController < ApplicationController
  before_action :set_order, only: [:new, :show, :create, :update]

  def new
    @order = Order.new
  end

  def show
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
      else
        format.html { render :new }
      end
    end

  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully processed.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:buyer_email, :shipping_address, :total)
    end

end
