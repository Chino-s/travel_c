TravelC::Application.routes.draw do
  devise_for :users

  root to: "top#index"

  get "top" => "top#top", as: "top"

  get "lesson/:action(/:name)" => "lesson"

  resources :countries do
    collection { get "search" }
  end

  get "top/country"

  get "top/city"

  get "top/result"

  get "top/food"

  root to: "home#index"

  namespace :admin do
    root to: "top#index"
    resources :members do
      collection { get "search" }
    end
    resources :articles
  end

end
