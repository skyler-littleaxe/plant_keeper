Rails.application.routes.draw do
  get 'water_logs/index'
  get 'water_logs/new'
  get 'water_logs/create'
  get 'water_logs/show'
  get 'water_logs/edit'
  get 'water_logs/update'
  get 'water_logs/destroy'
  get 'plants/index'
  get 'plants/new'
  get 'plants/create'
  get 'plants/show'
  get 'plants/edit'
  get 'plants/update'
  get 'plants/destroy'
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', omniauth_callbacks: 'omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
