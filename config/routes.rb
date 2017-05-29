TravelC::Application.routes.draw do
  get "foods/index"

  get "results/index"

  get "cities/index"

  get "top" => "top#index", as: "top"
  root to: "top#index"

  get "/countries/:id", to: "countries#show", as: "country"
  resources :countries do
    collection { get "search" }
  end

  get "/cities/:id", to: "cities#show", as: "city"
  resources :cities do
    collection { get "search" }
  end


  get "/results", to: "results#index"

  get "/foods", to: "foods#index"


end
