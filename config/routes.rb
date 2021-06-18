Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  resources :users, :only => [:index, :show]
  resources :messages, :only => [:create]
  resources :rooms, :only => [:index, :create, :show]
end
