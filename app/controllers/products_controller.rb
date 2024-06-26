class ProductsController < ApplicationController
    def show
        @product = Product.find(params[:id])
    end
     def index
    @admin_products = Admin::Product.all
  end
end
