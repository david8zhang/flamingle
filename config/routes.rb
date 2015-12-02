Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :countries, :only => [:index, :show]
end
