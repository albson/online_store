class StoreController < ApplicationController
	before_action :authenticate_user!
  def index
  	@products = Product.all
  	@cart = current_cart
  end
end
