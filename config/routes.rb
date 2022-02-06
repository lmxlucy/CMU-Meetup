Rails.application.routes.draw do
  resources :tags
  resources :groups
  resources :events
  resources :users
  get '/auth/:provider/callback' => 'sessions#omniauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
