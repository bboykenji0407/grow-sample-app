Rails.application.routes.draw do
  get 'best8s/new'
  get 'best8s/show'
  get 'best16s/index'
  get 'best16s/new'
  get 'best16s/create'
  get 'best16s/show'
  get 'user/index'
  devise_for :users
  root to: "users#index"
  resources :best16s
  resources :best8s
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
