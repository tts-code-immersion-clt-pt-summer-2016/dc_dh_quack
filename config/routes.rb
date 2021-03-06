Rails.application.routes.draw do

  resources :profiles, only: [:index, :show]
  resources :relationships

  resources :tweets do
   resource :like
  end

  root 'tweets#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
