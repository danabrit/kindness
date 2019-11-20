Rails.application.routes.draw do
  get 'acts/get_raks'
  resources :acts, only: [:new, :create]

  get 'pages/home'

  root 'pages#home'

  get 'get_raks', to: 'acts#get_raks', as: :get_raks
end
