Rails.application.routes.draw do
  get 'cooking_materials/index'
  get 'cooking_materials/create'
  get 'cooking_materials/edit'
  get 'cooking_materials/update'
  get 'cooking_materials/destroy'
  get 'materials/index'
  get 'materials/create'
  get 'materials/edit'
  get 'materials/update'
  get 'materials/destroy'
  get 'recipes/index'
  get 'recipes/show'
  get 'recipes/index'
  get 'recipes/new'
  get 'recipes/edit'
  get 'recipes/update'
  get 'recipes/destroy'
  get 'recipe/index'
  get 'recipe/show'
  devise_for :experts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
