Rails.application.routes.draw do
  root 'link_app#index'
  get  '/user/:id', to: 'link_app#index'
  get  '/link/:slug', to: 'link_app#index'
  get  '/user', to: 'link_app#index'
  get  '/users', to: 'link_app#index'

  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
