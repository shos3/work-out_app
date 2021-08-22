Rails.application.routes.draw do

  devise_for :users, controllers: {
   registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  root 'application#index'
  resources :application
  resources :plan, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  get "plan/show"  
end

