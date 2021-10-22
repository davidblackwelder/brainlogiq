Rails.application.routes.draw do
  root "static_pages#home"
  devise_for :users
  resources :courses
  resources :users, only: [:index, :edit, :show, :update]
  get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
