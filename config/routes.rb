Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  root 'application#index'
  resources :application
  resources :plan, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :tweet, only: [:index, :new, :create, :show, :destroy] 
    post '/tweets/:tweet_id/like' => "like#create"
    delete '/tweets/:tweet_id/like' => "like#destroy"
    resources :messages, only: [:new, :create]
end

#post '/tweets/:tweet_id/like' => "like#create"
 #   delete '/tweets/:tweet_id/like' => "like#destroy"