Rails.application.routes.draw do
  root to: "articles#index"
  resources :comments
  resources :admin_users
  mount Split::Dashboard, at: 'split'
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
