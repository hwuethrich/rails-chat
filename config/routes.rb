Rails.application.routes.draw do
  root to: 'application#index'
  match '*path', to: 'application#index', format: false, via: :get
end