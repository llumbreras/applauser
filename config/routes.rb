Applauser::Application.routes.draw do
  root to: 'homes#show', via: :get
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :applauses, only: [:show]
  resources :text_applauses, only: [:create]
  resources :photo_applauses, only: [:create]
  end
