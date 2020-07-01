class Api::ProductsController < ApplicationController

  def product_list
    @products = Product.all
    render "product_name.json.jb"
  end
  def product_cookie
    @product_first = Product.first
    render "product_first.json.jb"
  end
  def product_cake
    @product_second = Product.second
    render "product_second.json.jb"
  end
  def product_banana
    @product_third = Product.third
    render "product_third.json.jb"
  end
end
