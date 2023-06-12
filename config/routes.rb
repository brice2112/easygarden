Rails.application.routes.draw do
  devise_for :users
  root to: "gardens#index"

  resources :gardens, only: [:index, :show, :new, :create, :destroy] do
    get :compartments
  end

  # Garden generation process
  get '/gardens/:id/garden_created', to: 'gardens#garden_created', as: 'garden_created'
  post '/gardens/:id/implant', to: 'gardens#implant', as: 'implant'
  get '/gardens/:id/garden_implanted', to: 'gardens#garden_implanted', as: 'garden_implanted'
  post '/gardens/:id/validate', to: 'gardens#validate', as: 'validate_garden'

  # Catalog view
  resources :vegetables, only: [:show]
end
