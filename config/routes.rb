Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :pets
  resources :users
  resources :pets do
    resources :swipes, only: [:new, :create]
  end
  resources :matches, only: [:index]
  resources :matches do
    resources :messages, only: [:new, :create, :show]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
