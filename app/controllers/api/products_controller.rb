class Api::ProductsController < ApplicationController

  def product_list
    @products = Product.all
    render "product_name.json.jb"
  end
  def product_cookie
    @product_first = Product.first
    render "product_first.json.jb"
  end
end
