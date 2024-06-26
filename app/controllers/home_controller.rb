class HomeController < ApplicationController
  def index
    @products = Product.all
    @main_categories = Category.main # Supondo que você tem um escopo 'main' no modelo Category
  end
end
