Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :gardens, only: [:index, :show, :new, :create, :destroy] do
    get :compartments
  end

  get '/gardens/:id/garden_created', to: 'gardens#garden_created', as: 'garden_created'

  resources :vegetables, only: [:show]
end
