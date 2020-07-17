class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(      
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    if @product.save 
      render 'show.json.jb'
    else
      render "error.json.jb"
    end
  end

  def update
    @product = Product.find_by(id: params[:id]) 
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    
    if @product.save
      render 'show.json.jb'
    else
      render "error.json.jb"
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "you have successfully deleted the product"} 
  end

end
