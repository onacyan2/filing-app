Rails.application.routes.draw do
  devise_for :users
  root to: 'files#index'
  resources :business_files, only: [:new, :create]
end
