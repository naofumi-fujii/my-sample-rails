Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  root to: "comments#index"
  resources :comments
  resources :admin_users
  mount Split::Dashboard, at: 'split'
  resources :users
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
