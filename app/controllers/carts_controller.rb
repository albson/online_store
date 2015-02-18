class CartsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def index
    @carts = Cart.all
  end

  def show
  end

  def new
    @cart = Cart.new
  end


  def edit
  end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      redirect_to @cart
    else
      render :new 
    end
  end


  def update
    if @cart.update(cart_params)
        redirect_to @cart 
    else
        render :edit 
    end
  end


  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to store_index_path
  end

  private

    def set_cart
      @cart = Cart.find(params[:id])
    end

  
    def cart_params
      params[:cart]
    end
end
