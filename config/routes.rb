Rails.application.routes.draw do
  root to: "api/v1/decks#index"
 
  namespace :api do
    namespace :v1 do
      resources :users
      resources :decks
      resources :cards
      get "current_user", to: "auth#get_user_from_token"
      post "login", to: "auth#login"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
