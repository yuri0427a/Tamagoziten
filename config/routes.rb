Rails.application.routes.draw do
  devise_for :experts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
