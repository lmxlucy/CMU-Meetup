Rails.application.routes.draw do
  resources :tags
  resources :groups
  resources :events
  resources :users
  get 'events/search', to: 'event#search', as: :search
  root 'events#index'
  # POST '/auth/:provider/callback' => 'sessions#omniauth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
