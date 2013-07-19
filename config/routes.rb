Applauser::Application.routes.draw do
  root to: 'homes#show', via: :get
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show] do
  	post 'follow' => 'following_relationships#create'
  end
  resources :applauses, only: [:show]
  resources :text_applauses, only: [:create]
  resources :photo_applauses, only: [:create]
  end
