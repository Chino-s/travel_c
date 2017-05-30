TravelC::Application.routes.draw do

  resources :top, :only => [:index]
  root :controller => 'top', :action => 'index', as: "top"

  get "/countries/:id", to: "countries#show", as: "countries"
  resources :countries, :only => [:index, :show], as: "countries" do
    collection { get "search" }
  end

  get "/cities/:id", to: "cities#show", as: "city"
  resources :cities, :only => [:index, :show] do
    collection { get "search" }
  end

  get "/foods/:id", to: "foods#show", as: "food"
  resources :foods, :only => [:index, :show] do
    collection { get "search" }
  end

  resources :results, :only => [:index]

end
