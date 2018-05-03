Rails.application.routes.draw do  
  get 'seasons/show'

  resources :impressions

  root :to => 'pages#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",:registrations => 'registrations' }

  resources :users, only: [:show]

  # resources :dramas

  # resources :seasons

    resources :dramas do
    resources :seasons
  end

  get 'manage-impression/:id/basics' => 'impressions#basics', as: 'manage_impression_basics'
end
