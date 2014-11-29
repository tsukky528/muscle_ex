Rails.application.routes.draw do

  root :to => 'movies#index'

  devise_for :users
  resources :users, :only => [:show]

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :movies, :only => [:index, :show] do
    collection do
      get :chest
      get :abs
      get :back
      get :arm
      get :leg
    end
    member do
      post :like
      post :unlike
    end
  end
end
