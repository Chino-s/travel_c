TravelC::Application.routes.draw do

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

  get "/foods/:id", to: "foods#show", as: "food"
  resources :foods do
    collection { get "search" }
  end

  resources :results, :only => [:index]

end
