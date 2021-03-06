class LineItemsController < ApplicationController
before_action :authenticate_user!
  def index
    @line_items = LineItem.all
  end

  def show
    @line_item = LineItem.find(params[:id])
  end

  def new
    @line_item = LineItem.new
  end


  def edit
    @line_item = LineItem.find(params[:id])
  end


  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)
    @line_item.product = product

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to store_url }
        format.js
      else
        format.html { render action: "new" }

      end
    end
  end

  def update
    @line_item = LineItem.find(params[:id])
    
    if @line_item.update_attributes(params[:line_item])
        redirect_to @line_item
    else
      render action: "edit" 
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to line_items_url 
  end
end