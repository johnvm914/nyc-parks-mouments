Rails.application.routes.draw do

  root to: "monuments#index"

  get "/favorites", to: "favorites#index"

  namespace :api do
    namespace :v1 do
      resources :favorites, except: [:new, :edit]
      # post "/favorites", to: "favorites#create"
    end
  end

  get "/favorites", to: "favorites#index"
  
end
