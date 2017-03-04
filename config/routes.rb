Rails.application.routes.draw do

  root to: "monuments#index"

  namespace :api do
    namespace :v1 do
      resources :favorites, except: [:new, :edit]
    end
  end

  get "/favorites", to: "favorites#index"
  
end
