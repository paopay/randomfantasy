Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users

  resources :leagues, only: [:show, :new, :create]
  
end
