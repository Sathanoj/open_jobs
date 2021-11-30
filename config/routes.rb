Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :companies, only: [ :new, :edit, :create, :update ]
  resources :positions, only: [ :index, :new, :edit, :show ]
  resources :applicants, only: [ :index, :new ]
end
