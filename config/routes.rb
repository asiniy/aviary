Rails.application.routes.draw do
  root to: 'pictures#index'
  resources :pictures, except: :index
end
