Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE

  namespace :api do
    get "/Store" => "products#product_list"
  end
  namespace :api do
    get "/Store1" => "products#product_cookie"
  end
  namespace :api do
    get "/Store2" => "products#product_cake"
  end
  namespace :api do
    get "/Store3" => "products#product_banana"
  end
end
