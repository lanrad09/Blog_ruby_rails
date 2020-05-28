Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # The root of the site routed with "root"
  root 'posts#index'
end
