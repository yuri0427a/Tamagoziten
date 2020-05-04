Rails.application.routes.draw do
  
  root 'homes#top'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories, only: [:show]
  namespace :users do
    resources :users, only: [:show, :edit, :update]
    resources :recipes do
      post '/recipe_reviews' => 'recipe_reviews#create', as: 'review'
      get '/recipe_favorites' => 'recipe_favorites#index', as: 'favorites'
      post '/recipe_favorites' => 'recipe_favorites#create', as: 'favorite'
      delete '/recipe_favorites' => 'recipe_favorites#destroy'
    end
  end
end
