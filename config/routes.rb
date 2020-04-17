Rails.application.routes.draw do
  
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#top'

  #namespace :experts do
    #resources :recipes, except: :show do
      #cooking_materialsのルート
      #get '/cooking_materials' => 'cooking_materials#index', as: 'materials'
      #post '/cooking_materials' => 'cooking_materials#create', as: 'material'
      #patch '/cooking_materials/:id' => 'cooking_materials#update'
      #delete'/cooking_materials/:id' => 'cooking_materials#destroy'
      #get '/cooking_materials/:id/edit' => 'cooking_materials#edit', as: 'edit_material'
      #cooking_proceduresのルート
      #get '/cooking_procedures' => 'cooking_procedures#index', as: 'procedures'
      #post '/cooking_procedures' => 'cooking_procedures#create', as: 'procedure'
      #patch '/cooking_procedures/:id' => 'cooking_procedures#update'
      #delete'/cooking_procedures/:id' => 'cooking_procedures#destroy'
      #get '/cooking_procedures/:id/edit' => 'cooking_procedures#edit', as: 'edit_procedure'

      #resources :cooking_materials, only:[:index, :create, :edit, :update, :destroy]
      #resources :cooking_procedures, only:[:index, :create, :edit, :update, :destroy]
    #end
  #end

  namespace :users do
    resources :users, only: [:show, :edit, :update]
    get 'recipes/search' => 'recipes#search'
    resources :recipes do
      #cooking_materialsのルート
      get '/cooking_materials' => 'cooking_materials#index', as: 'materials'
      post '/cooking_materials' => 'cooking_materials#create', as: 'material'
      patch '/cooking_materials/:id' => 'cooking_materials#update'
      delete'/cooking_materials/:id' => 'cooking_materials#destroy'
      get '/cooking_materials/:id/edit' => 'cooking_materials#edit', as: 'edit_material'
      #cooking_proceduresのルート
      get '/cooking_procedures' => 'cooking_procedures#index', as: 'procedures'
      post '/cooking_procedures' => 'cooking_procedures#create', as: 'procedure'
      patch '/cooking_procedures/:id' => 'cooking_procedures#update'
      delete'/cooking_procedures/:id' => 'cooking_procedures#destroy'
      get '/cooking_procedures/:id/edit' => 'cooking_procedures#edit', as: 'edit_procedure'
      #レビュー機能
      post '/recipe_reviews' => 'recipe_reviews#create', as: 'review'
      #ブックマーク機能
      get '/recipe_favorites' => 'recipe_favorites#index', as: 'favorites'
      post '/recipe_favorites' => 'recipe_favorites#create', as: 'favorite'
      delete '/recipe_favorites' => 'recipe_favorites#destroy'
    end
  end
end
