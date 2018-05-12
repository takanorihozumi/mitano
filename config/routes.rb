Rails.application.routes.draw do  
  resources :impressions do
    resources :comments, only: [:create, :destroy]
  end

  resources :likes, only: [:create, :destroy]

  get 'pages/privacy_policy'
  get 'episodes/show'

  get 'seasons/show'

  resources :impressions,:episodes

  root :to => 'pages#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",:registrations => 'registrations' }

  resources :users, only: [:show]

    resources :dramas do
    resources :seasons, shallow: true
  end

  get 'manage-impression/:id/basics' => 'impressions#basics', as: 'manage_impression_basics'
end
