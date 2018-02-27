Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  get 'breweries', to: 'breweries#index'

end
