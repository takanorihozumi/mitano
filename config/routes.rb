Rails.application.routes.draw do  
  resources :impressions

  root :to => 'pages#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",:registrations => 'registrations' }

  resources :users, only: [:show]

  get 'manage-impression/:id/basics' => 'impressions#basics', as: 'manage_impression_basics'
end
