Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/Store" => "products#product_list"
  
  
    get "/Store1" => "products#product_cookie"
  
  
    get "/Store2" => "products#product_cake"
  
  
    get "/Store3" => "products#product_banana"
  
  
    get "/any_product" => "products#any_product"

    get "/any_product/:product" => "products#any_product"

    post "/guess_game" => "products#guess_game"

    post "/username" => "products#user_check"
  end
end