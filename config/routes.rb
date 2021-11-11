Rails.application.routes.draw do
  devise_for :users
  root to: 'business_files#index'
  resources :business_files, only: [:new, :create, :index] do
    resources :documents, only: [:new, :create]
  end
end
