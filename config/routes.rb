Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  post '/graphql', to: 'graphql#execute'

  get '/reset', to: 'application#reset'
  get '/logout', to: 'application#logout'

  root to: 'application#index'
  match '*path', to: 'application#index', format: false, via: :get
end
