Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root 'application#index'
  resources :application
  resources :plan, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :tweet, only: [:index, :new, :create, :show, :destroy]do
  resources :messages, only: [:create, :destroy]
end
 
  post '/tweets/:tweet_id/like' => 'like#create'
  delete '/tweets/:tweet_id/like' => 'like#destroy'

  
 
  #get '/tweets/:tweet_id/message' => 'message#index'
  #post '/tweets/:tweet_id/message' => 'like#create'  
end