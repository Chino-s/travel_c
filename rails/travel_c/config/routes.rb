TravelC::Application.routes.draw do
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

end
