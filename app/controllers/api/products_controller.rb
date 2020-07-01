class Api::ProductsController < ApplicationController

  def product_list
    @products = Product.all
    render "product_name.json.jb"
  end
end
