Rails.application.routes.draw do

  devise_for :users, controllers: {
   registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  root 'application#index'
  resources :application
  resources :plan, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :tweet, only: [:index, :new, :create, :show, :destroy] do
    resources :likes, only: [:create, :destroy]
  end
end

