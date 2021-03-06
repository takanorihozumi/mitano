Rails.application.routes.draw do  

  post 'watching_statuses/select'

  get 'entries/index'

  get 'entries/show'

  get '/.well-known/acme-challenge/:id' => 'pages#certbot'

  resources :impressions do
    resources :comments, only: [:create, :destroy]
  end

  resources :likes, only: [:create, :destroy]
  resources :impressions,:episodes
  resources :relationships, only: [:create, :destroy]
  resources :casts, only: [:index, :show]
  resources :articles
  resources :posts

  get 'pages/privacy_policy'
  get 'episodes/show'

  get 'seasons/show'
  resources :feeds do
    member do
     resources :entries, only: [:index, :show]
   end
 end


 root :to => 'pages#index'

 devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",:registrations => 'registrations' }

 resources :users do
  member do
    get :following, :followers
  end
end

resources :dramas do
  resources :seasons, shallow: true
end

get 'manage-impression/:id/basics' => 'impressions#basics', as: 'manage_impression_basics'
end
