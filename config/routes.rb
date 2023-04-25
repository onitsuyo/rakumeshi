Rails.application.routes.draw do
  devise_for :users
  root to: "recipes#index"
  resources :recipes, only: [:index, :new, :create] do
    resources :ingredients, only: :create 
    resources :seasonings, only: :create 
    resources :procedures, only: :create 
  end
end
