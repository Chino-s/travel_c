TravelC::Application.routes.draw do

  get "users/index"

  #get "user/index"

  get "top" => "top#index", as: "top"
  root to: "top#index"

  #resource :admin, :only => [:index]

  resources :food, :only => [:index]

  resource :result

  #devise_for :users

  get "/countries/:id", to: "countries#show", as: "country"
  resources :countries do
    collection { get "search" }
  end

  get "/cities/:id", to: "cities#show", as: "city"
  resources :cities do
    collection { get "search" }
  end

  #resource :user

  namespace :admin do
    resources :users do
      collection { get "search" }
    end
  end


end
