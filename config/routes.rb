Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get "/fortune", controller: "my_examples", action: "random_fortune"

get "/lotto_win", controller: "my_examples", action: "lotto"

get "/lyrics", controller: "my_examples", action: "bottles"
end
