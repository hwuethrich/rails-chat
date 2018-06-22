Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  post '/graphql', to: 'graphql#execute'

  root to: 'application#index'
  match '*path', to: 'application#index', format: false, via: :get
end
