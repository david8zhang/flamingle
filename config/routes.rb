Rails.application.routes.draw do
    root to: 'cods#index'
    resources :cods
    devise_for :users
    resources :users
    resources :countries, :only => [:index, :show]
    get '/charities/new/:cod_id', to: 'charities#new'
    post 'charities', to: 'charities#create'
    get '/charities/:id', to: 'charities#show'
end
