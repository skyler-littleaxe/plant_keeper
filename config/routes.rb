Rails.application.routes.draw do

  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', omniauth_callbacks: 'users/omniauth_callbacks'}
  authenticated :user do
    root 'home#welcome', as: 'authenticated_root'
  end
  devise_scope :user do
    root 'users/sessions#new'
  end
  resources :plants
  resources :waterings
  get '/search' => 'pages#search', as: 'search_page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
