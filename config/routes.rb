Rails.application.routes.draw do
    root to: 'cods#random'
    resources :cods
    devise_for :users
    resources :users
    resources :countries, :only => [:index, :show]
    get '/charities/new/:cod_id/:country_id', to: 'charities#new'
    resources :charities do
      resources :donations
    end
end
