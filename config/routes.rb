TravelC::Application.routes.draw do


  get "top" => "top#index", as: "top"
  root to: "top#index"

  resources :countries, :only => [:index, :show] do
    collection { get "search" }
  end


  resources :cities, :only => [:index, :show] do
    collection { get "search" }
  end

  resources :foods, :only => [:index, :show] do
    collection { get "search" }
  end

  resources :results, :only => [:index]

end
