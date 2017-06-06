TravelC::Application.routes.draw do

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

  namespace :admin do
    resources :countries 
  end

  resources :admin, :only => [:index], :as => :admin


end
