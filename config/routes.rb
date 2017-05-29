TravelC::Application.routes.draw do
  get "food/index"

  get "result/index"

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


  get "/result", to: "result#index"

  get "/food", to: "food#index"


end
