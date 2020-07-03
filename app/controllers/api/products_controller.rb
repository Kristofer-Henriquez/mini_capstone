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

  def any_product
    product = params["product"]
    @product = Product.find_by(id: product)
    render "any_product.json.jb"
  end

  def guess_game
    guess_answer = params[:number].to_i
    if guess_answer > 32
      @message = "you guessed too high"
    elsif guess_answer < 32
      @message = "you guessed too low"
    else
      @message = "That's correct!"
    end
    render "guess_game.json.jb"
  end

  def user_check
    if params[:username] == "hugh" && params[:password] == "swordfish"
      @message = "valid credentials"
    else
      @message = "invalid credentials"
    end
    render "check.json.jb"
  end
  
end
